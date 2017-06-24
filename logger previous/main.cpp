#include <iostream>
#include <unistd.h>
#include "logger.h"
#include "serve.h"

int main() {
    serve netcat;
    netcat.sock();
    return 0;
}
