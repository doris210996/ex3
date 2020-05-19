#include <pthread.h>
#include <atomic>
#include <algorithm>
#include <semaphore.h>
#include "Barrier.h"
#include "MapReduceFramework.h"
#include <iostream>
typedef std::vector<IntermediatePair> IntermediateVec;

typedef struct ThreadContext {
    const MapReduceClient *client;
    const InputVec *inputVec;
    int threadID;
    Barrier* barrier;
    std::atomic<unsigned long>* atomic_counter;
    std::atomic<unsigned long>* atomic_mapping_counter;
    IntermediateVec** allIntermediateVec;
    int stage ;
    OutputVec *output;
}ThreadContext;


typedef struct jobContext{
    int numOfThreads;
    const InputVec *inputVec;
    OutputVec *outputVec;
    ThreadContext *contexts;
    pthread_t *threads;
}jobContext;

void frameworkMap(ThreadContext *tc)
{
    unsigned long inputVectorLength = tc->inputVec->size();
    unsigned long oldValue = (*(tc->atomic_counter))++;
    while(oldValue < inputVectorLength)
    {
        K1* key = tc->inputVec->at(oldValue).first;
        V1* value =  tc->inputVec->at(oldValue).second;
        tc->client->map(key, value, tc);
        (*(tc->atomic_mapping_counter))++;
        oldValue = (*(tc->atomic_counter))++;
    }
}

void *threadWork(void *arg)
{
    auto * threadContext = (ThreadContext *)arg;
    frameworkMap(threadContext);
    threadContext->barrier->barrier();

    // here should call functions to to shuffle and reduce


    return nullptr;
}


bool cmp(IntermediatePair a, IntermediatePair b)
{
    return *a.first < *b.first;
}




JobHandle startMapReduceJob(const MapReduceClient& client,
                            const InputVec& inputVec, OutputVec& outputVec,
                            int multiThreadLevel){
    auto *currJobContext = new jobContext;
    currJobContext->inputVec = &inputVec;
    currJobContext->outputVec = &outputVec;
    currJobContext->contexts = new ThreadContext[multiThreadLevel];
    currJobContext->threads = new pthread_t[multiThreadLevel];
    currJobContext->numOfThreads = multiThreadLevel;
    auto *barrier = new Barrier(multiThreadLevel);
    auto *atomic_counter = new std::atomic<unsigned long>(0);
    auto *atomic_mapping_counter = new std::atomic<unsigned long>(0);
    auto **allIntermediates = new IntermediateVec*[multiThreadLevel];
    for (int i = 0; i < multiThreadLevel; ++i) {
        allIntermediates[i] = new IntermediateVec();
        currJobContext->contexts[i] = {&client, &inputVec, i, barrier,atomic_counter,
                                      atomic_mapping_counter,allIntermediates,UNDEFINED_STAGE,&outputVec};
    }
    for (int i = 0; i < multiThreadLevel; ++i) {
        pthread_create(currJobContext->threads + i, nullptr, threadWork,
                       currJobContext->contexts + i);
    }
    return  currJobContext;
}


void emit2(K2 *key, V2 *value, void *context)
{
    auto * tc = (ThreadContext*) context;
    tc->allIntermediateVec[tc->threadID]->push_back({key,value});
}

void emit3 (K3* key, V3* value, void* context){

}

void waitForJob(JobHandle job){

}
void getJobState(JobHandle job, JobState* state){

}

void closeJobHandle(JobHandle job){
    auto * jc = (jobContext*) job;
    for(int i=0; i<jc->numOfThreads; ++i)
    {
        if (pthread_join(jc->threads[i], nullptr) !=0){ //merges threads
            exit(1);
        }
    }
    delete[] jc->threads;
    for(int i=0; i<jc->numOfThreads; ++i)
    {
        delete jc->contexts[i].allIntermediateVec[i];
    }
    delete[] jc->contexts[0].allIntermediateVec;
    delete jc->contexts[0].barrier;
    delete jc->contexts[0].atomic_counter;
    delete jc->contexts[0].atomic_mapping_counter;
    delete[] jc->contexts;
    delete jc;
}