
#include "serve.h"
#include "logger.h"
#include "enc_dec.h"
#include <stdio.h>
#include <sys/socket.h>
#include <stdlib.h>
#include <netinet/in.h>
#include <string.h>
#include <unistd.h>
#include <iostream>

void serve::sock()
{
    int server_fd, new_socket, valread;
    struct sockaddr_in address;
    int opt = 1;
    int addrlen = sizeof(address);
    char buffer[1024] = {0};

    if ((server_fd = socket(AF_INET, SOCK_STREAM, 0)) == 0)
    {
        perror("socket failed");
        exit(EXIT_FAILURE);
    }

    // Forcefully attaching socket to the port 8080
    if (setsockopt(server_fd, SOL_SOCKET, SO_REUSEADDR , &opt, sizeof(opt)))
    {
        perror("setsockopt");
        exit(EXIT_FAILURE);
    }
    address.sin_family = AF_INET;
    address.sin_addr.s_addr = INADDR_ANY;
    address.sin_port = htons( PORT );

    // Forcefully attaching socket to the port 8080
    if (bind(server_fd, (struct sockaddr *)&address, sizeof(address))<0)
    {
        perror("bind failed");
        exit(EXIT_FAILURE);
    }
    if (listen(server_fd, 3) < 0)
    {
        perror("listen");
        exit(EXIT_FAILURE);
    }
    if ((new_socket = accept(server_fd, (struct sockaddr *)&address, (socklen_t*)&addrlen))==-1)
    {
        perror("accept");
        exit(EXIT_FAILURE);
    }

    char COMMAND[128] = "COM";

    do {
        valread = read(new_socket, buffer, 1024);
        sscanf(buffer, "%s", COMMAND);
        if (strcmp(COMMAND, "START_MEM_LOG") == 0) {


            pthread_t th[1];

            int ret1 = pthread_create(&th[0], NULL, threadFile, NULL);

            pthread_join(th[0], NULL);
            send(new_socket , log_start , strlen(log_start) , 0 );
        }
        else if (strcmp(COMMAND, "STOP_MEM_LOG") == 0) {
            pthread_t th[1];
            pthread_detach(th[0]);
            send(new_socket , log_stop , strlen(log_stop) , 0 );
        }
        else if(strcmp(COMMAND, "START_CPU_LOG") == 0)
        {
            pthread_t th1[1];

            int ret1 = pthread_create(&th1[0], NULL, threadFile1, NULL);

            pthread_join(th1[0], NULL);
            send(new_socket , log_start , strlen(log_start) , 0 );
        }
        else if (strcmp(COMMAND, "STOP_CPU_LOG") == 0)
        {
            pthread_t th1[1];
            pthread_detach(th1[0]);
            send(new_socket , log_stop , strlen(log_stop) , 0 );
        }
        else if (strcmp(COMMAND, "ENCRYPT") == 0)
        {
            send(new_socket , encr , strlen(encr) , 0 );
            read(new_socket, buffer, 1024);
            sscanf(buffer, "%s", COMMAND);
            infilename = COMMAND;
            enc_dec enc;
            enc.Encrypt(infilename);
            send(new_socket , suc_encr , strlen(suc_encr) , 0 );
        }
        else if (strcmp(COMMAND, "DECRYPT") == 0)
        {
            send(new_socket , decr , strlen(decr) , 0 );
            read(new_socket, buffer, 1024);
            sscanf(buffer, "%s", COMMAND);
            infilename = COMMAND;
            enc_dec dec;
            dec.Decrypt(infilename);
            send(new_socket , suc_decr , strlen(suc_decr) , 0 );
        } else if(strcmp(COMMAND,"SHUTDOWN") == 0)
        {
        logger en;
            en.end();
                }
    }while(strcmp(COMMAND, "SHUTDOWN") != 0);
}