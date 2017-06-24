#include "logger.h"
#include<sys/sysinfo.h>
#include<string.h>
#include<unistd.h>
#include<cstdlib>
#include<iostream>
#include<cstring>

using namespace std;

static int tmp=0;

int parseLine(char *line)
{
    int i=strlen(line);
    const char *t=line;
    while(*t<'0'||*t>'9')
        t++;
    line[i-3]='\0';
    i=atoi(t);
    return i;
}

void logger::filesize()
{
    ifstream in(s,ifstream::ate|ifstream::binary);
    if(in.tellg()>SIZE_t)
    {
	time(&rawtime);
        timeinfo = localtime(&(rawtime));
        strftime(buffer,sizeof(buffer),"%d-%m-%Y",timeinfo);
        string str(buffer);
        str= filename+str+".xml";
        s= str.c_str();
        File.open(s,ios::app);
        if(File.is_open())
        {
            File.close();
        }
    }
}



void logger::MEMLogger()
{
    struct sysinfo meminfo;
    if(RAM==true)
    {

        File.open(s,ios::app);
        //total RAM
        long long totalARAM=meminfo.totalram;
        totalARAM *= meminfo.mem_unit;

        //total RAM used
        FILE *fp= fopen("/proc/meminfo","r");
        char line[128];
        int result =-1;
        int total,free;
        while(fgets(line,128,fp) !=NULL)
        {
            if(strncmp(line,"MemTotal:",6) == 0)
            {
                total = parseLine(line);
                break;
            }

        }
        while(fgets(line,128,fp) !=NULL) {
            if (strncmp(line, "MemFree:", 6) == 0) {
                free = parseLine(line);
                break;
            }
        }
        fclose(fp);
	time(&rawtime);
        timeinfo = localtime(&rawtime);
        strftime(buffer,sizeof(buffer),"%d-%m-%Y  %I-%M-%S",timeinfo);
        string str(buffer);
        File<<"<RAM     "<<"date="<<"\""<<str<<"\"  "<<"used=\""<<total-free<<"\"  "<<"free=\""<<free<<"\""<<"/>"<<endl;
        File.close();
    }
}

void logger::CPULogger()
{
    static unsigned long long lastTotalUser, lastTotalUserLow, lastTotalSys, lastTotalIdle;
    if(CPU==true)
    {

        File.open(s,ios::app);

        double percent;
        FILE* file;
        unsigned long long totalUser, totalUserLow, totalSys, totalIdle, total;

        file = fopen("/proc/stat", "r");
        fscanf(file, "cpu %llu %llu %llu %llu", &totalUser, &totalUserLow, &totalSys, &totalIdle);
        fclose(file);

        if (totalUser < lastTotalUser || totalUserLow < lastTotalUserLow || totalSys < lastTotalSys || totalIdle < lastTotalIdle){
            percent = -1.0;
        }
        else{
            total = (totalUser - lastTotalUser) + (totalUserLow - lastTotalUserLow) + (totalSys - lastTotalSys);
            percent = total;
            total += (totalIdle - lastTotalIdle);
            percent /= total;
            percent *= 100;
        }

        lastTotalUser = totalUser;
        lastTotalUserLow = totalUserLow;
        lastTotalSys = totalSys;
        lastTotalIdle = totalIdle;
	    time(&rawtime);
        timeinfo = localtime(&rawtime);
        strftime(buffer,sizeof(buffer),"%d-%m-%Y  %I-%M-%S",timeinfo);
        string str(buffer);
        File<<"<CPU     "<<"date="<<"\""<<str<<"\"  "<<"used=\""<<percent<<"\"  "<<"free=\""<<100-percent<<"\""<<"/>"<<endl;
        File.close();
    }
}

logger::logger()
{
    time(&rawtime);
    timeinfo = localtime(&rawtime);
    strftime(buffer,sizeof(buffer),"%d-%m-%Y",timeinfo);
    string str(buffer);
    str= filename+str+".xml";
    s= str.c_str();
    File.open(s,ios::app);

   if(File.is_open()) {
       if(tmp==0){
           File << "<?xml version=\"1.0\" encoding=\"UTF-8\"?>" << endl;
           File << "<usage_log>" << endl;
           tmp=1;
       }

       File.close();
   }
}


void* threadFile( void *th)
{

    logger *p=new logger;

    while(1)
    {
        pthread_mutex_lock(&(p->lock));
        p->MEMLogger();

        pthread_mutex_unlock(&(p->lock));
        p->timeToSleep=3600;
        if(shuttdown==true)
            break;
        sleep(p->timeToSleep);  //3600, 1 hour

    }
}
void* threadFile1( void *th1)
{

    logger *q=new logger;

    while(1)
    {
        pthread_mutex_lock(&(q->lock));
        q->CPULogger();

        pthread_mutex_unlock(&(q->lock));
        q->timeToSleep=3600;
        if(shuttdown==true)
            break;
        sleep(q->timeToSleep);  //3600, 1 hour

    }
}

void logger::end() {
    time(&rawtime);
    timeinfo = localtime(&rawtime);
    strftime(buffer,sizeof(buffer),"%d-%m-%Y",timeinfo);
    string str(buffer);
    str= filename+str+".xml";
    s= str.c_str();
    File.open(s,ios::app);

    if(File.is_open()) {
            File << "</usage_log>" << endl;
        }

}