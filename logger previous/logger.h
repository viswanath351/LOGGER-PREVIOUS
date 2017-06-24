
#ifndef LOGGER_LOG_H
#define LOGGER_LOG_H

#include<fstream>
#include<pthread.h>
#include<ctime>


static bool RAM = true;
static bool CPU = true;
static bool shuttdown = true;
static std::string filename="log";
void* threadFile( void *th);
void* threadFile1( void *th1);
static int SIZE_t = 50000;

class logger
{
private:

    pthread_mutex_t lock;
    std::ofstream File;
    char buffer[80];
    time_t rawtime;
    tm* timeinfo;
    const char* s;
    int timeToSleep;

private:
     void filesize();

public:
    logger() ;
    void MEMLogger();
    void CPULogger();
    friend void* threadFile(void *th);
    friend void* threadFile1(void *th1);
    void end();
};

#endif //LOGGER_LOG_H