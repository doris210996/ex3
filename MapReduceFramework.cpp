#include <pthread.h>
#include <atomic>
#include <algorithm>
#include <semaphore.h>
#include "Barrier.h"
#include "MapReduceFramework.h"
#include <iostream>
static const MapReduceClient *client;
struct Context{
    std::atomic<unsigned long>* atomics[2];
    const InputVec *inputVec;
    Barrier *barrier;
    OutputVec *outputVec;
};