# logger

Compilation steps

Install build requirements using below command

sudo apt-get install cmake g++ make nc 

Compiling the source

cd into source directory and follow these steps

1.cmake CMakeFiles.txt

2.make

3.sudo chmod +x logger

4.$./logger &

logger started as background process

to communicate with the logger

use this command

5.nc localhost 8080

nc commands are

START_MEM_LOG

STOP_MEM_LOG

START_CPU_LOG

STOP_CPU_LOG

ENCRYPT

DECRYPT

SHUTDOWN
