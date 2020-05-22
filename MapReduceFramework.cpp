#include <pthread.h>
#include <atomic>
#include <algorithm>
#include <semaphore.h>
#include "Barrier.h"
#include "MapReduceFramework.h"
#include <iostream>
typedef std::vector<IntermediatePair> IntermediateVec;
typedef std::vector<pthread_mutex_t*> mutexVec;
typedef std::vector<K2*> ReduceKeys;
typedef struct jobContext jobContext;


typedef struct ThreadContext {
    int threadID;
    int stage;
    jobContext *job;

}ThreadContext;


typedef struct jobContext{
    int numOfThreads;
    const MapReduceClient *client;
    const InputVec *inputVec;
    IntermediateVec* allIntermediateVec;
    OutputVec *outputVec;
    ThreadContext *contexts;
    pthread_t *threads;
    Barrier* barrier;
    std::atomic<unsigned long>* map_sync_counter;
    std::atomic<unsigned long>* reduce_sync_counter;
    std::atomic<unsigned long>* mapping_amount;
    IntermediateMap *intermediateMap;
    mutexVec intermediateMutexes;
    pthread_mutex_t *outputMutex;
    ReduceKeys *reduceKeys;

}jobContext;

void mutexLockWithErrors(pthread_mutex_t *mutex)
{
    if (pthread_mutex_lock(mutex) != 0)
    {
        exit(1);
    }
}

void mutexUnlockWithErrors(pthread_mutex_t *mutex)
{
    if (pthread_mutex_unlock(mutex) != 0)
    {
        exit(1);
    }
}

void frameworkMap(ThreadContext *tc)
{
    jobContext *job = tc->job;
    unsigned long inputVectorLength = job->inputVec->size();
    unsigned long oldValue = (*(job->map_sync_counter))++;
    while(oldValue < inputVectorLength)
    {
        K1* key = job->inputVec->at(oldValue).first;
        V1* value =  job->inputVec->at(oldValue).second;
        job->client->map(key, value, tc);
        (*(job->mapping_amount))++;
        oldValue = (*(job->map_sync_counter))++;
    }
}

void* frameworkShuffle(void *arg)
{
    auto *tc= (ThreadContext *)arg;
    jobContext *job = tc->job;
    auto map = *(job->intermediateMap);
    unsigned long inputVectorLength = job->inputVec->size();
    //while we didn't mapping all the inputs
    while ((*(job->mapping_amount)) < inputVectorLength){
        //iterate over all the therads
        for (int i = 0; i < job->numOfThreads; i ++)
        {
            auto curVec = job->allIntermediateVec[i];
            //iterate over all the pairs in the current
            //thread intermediate vector and map them
            while (!curVec.empty()){
                mutexLockWithErrors(tc->job->intermediateMutexes.at(i));
                IntermediatePair pair = curVec.back();
                if (map.find(pair.first) == map.end())
                {
                    std::vector<V2 *> vec{pair.second};
                    map.insert({pair.first, vec});
                }
                else
                {
                    map[pair.first].push_back(pair.second);
                }
                curVec.pop_back();
                mutexUnlockWithErrors(tc->job->intermediateMutexes.at(i));

            }
        }
    }
    for (int i = 0; i < job->numOfThreads; i ++)
    {
        auto curVec = job->allIntermediateVec[i];
        while (!curVec.empty()){
            IntermediatePair pair = curVec.back();
            if (map.find(pair.first) == map.end())
            {
                std::vector<V2 *> vec{pair.second};
                map.insert({pair.first, vec});
            }
            else
            {
                map[pair.first].push_back(pair.second);
            }
            curVec.pop_back();
        }
    }

//    for(IntermediateMap::iterator it = map.begin(); it != map.end(); ++it)
//    {
//        tc->job->reduceKeys->push_back(it->first);
//    }
    return nullptr;
}


void frameworkReduce(ThreadContext *tc)
{
    jobContext *job = tc->job;
    unsigned long len = job->reduceKeys->size();
    unsigned long oldValue = (*(job->reduce_sync_counter))++;
    while(oldValue < len)
    {
        K2* key = job->reduceKeys->at(oldValue);
        std::vector<V2*> value =  job->intermediateMap->at(key);
        job->client->reduce(key, value, tc);
        oldValue = (*(job->reduce_sync_counter))++;
    }
}

void *threadWork(void *arg)
{
    auto * threadContext = (ThreadContext *)arg;
    if(threadContext->threadID == 1)
    {
            frameworkShuffle(threadContext);
    }
    else
    {
            frameworkMap(threadContext);

    }
    threadContext->job->barrier->barrier();
    //STOP TILL THE SHUFFLE FINISH

    //From here down is after the shuffle stage
    frameworkReduce(threadContext);
    return nullptr;
}







JobHandle startMapReduceJob(const MapReduceClient& client,
                            const InputVec& inputVec, OutputVec& outputVec,
                            int multiThreadLevel){
    auto *currJobContext = new jobContext;
    auto *barrier = new Barrier(multiThreadLevel);
    auto *map_sync_counter = new std::atomic<unsigned long>(0);
    auto *reduce_sync_counter = new std::atomic<unsigned long>(0);
    auto *atomic_mapping_counter = new std::atomic<unsigned long>(0);
    currJobContext->inputVec = &inputVec;
    currJobContext->outputVec = &outputVec;
    currJobContext->contexts = new ThreadContext[multiThreadLevel];
    currJobContext->threads = new pthread_t[multiThreadLevel];
    currJobContext->outputMutex = new pthread_mutex_t();
    currJobContext->intermediateMap = new IntermediateMap;
    currJobContext->numOfThreads = multiThreadLevel;
    currJobContext->allIntermediateVec = new IntermediateVec[multiThreadLevel];
    currJobContext->reduceKeys = new ReduceKeys;
    currJobContext->client = &client;
    currJobContext->barrier = barrier;
    currJobContext->map_sync_counter = map_sync_counter;
    currJobContext->mapping_amount = atomic_mapping_counter;
    currJobContext->reduce_sync_counter = reduce_sync_counter;
    for (int i = 0; i < multiThreadLevel; i++) {
        currJobContext->contexts[i] = {i,UNDEFINED_STAGE,currJobContext};
        for (int j = 0; j < multiThreadLevel; j++){
            currJobContext->intermediateMutexes.push_back(
                    reinterpret_cast<pthread_mutex_t *const>(new pthread_mutex_t *));

        }
    }
    for (int i = 0; i < multiThreadLevel; i++) {
        pthread_create(currJobContext->threads + i, nullptr, threadWork,
                       currJobContext->contexts + i);
    }
    return  currJobContext;
}


void emit2(K2 *key, V2 *value, void *context)
{
    auto * tc = (ThreadContext*) context;
    mutexLockWithErrors(tc->job->intermediateMutexes.at(tc->threadID));
    tc->job->allIntermediateVec[tc->threadID].push_back({key,value});
    mutexUnlockWithErrors(tc->job->intermediateMutexes.at(tc->threadID));
}

void emit3 (K3* key, V3* value, void* context){
    auto * tc = (ThreadContext*) context;
    mutexLockWithErrors(tc->job->outputMutex);
    tc->job->outputVec->push_back({key, value});
    mutexUnlockWithErrors(tc->job->outputMutex);
}

void waitForJob(JobHandle job){

}
void getJobState(JobHandle job, JobState* state){

}

void closeJobHandle(JobHandle job){
//    auto * jc = (jobContext*) job;
//    for(int i=0; i<jc->numOfThreads; ++i)
//    {
//        if (pthread_join(jc->threads[i], nullptr) !=0){ //merges threads
//            exit(1);
//        }
//    }
//    delete[] jc->threads;
//    for(int i=0; i<jc->numOfThreads; ++i)
//    {
//        delete jc->contexts[i].allIntermediateVec[i];
//    }
//    delete[] jc->allIntermediateVec;
//    delete jc->contexts[0].barrier;
//    delete jc->contexts[0].atomic_counter;
//    delete jc->contexts[0].atomic_mapping_counter;
//    delete[] jc->contexts;
//    delete jc;
}
