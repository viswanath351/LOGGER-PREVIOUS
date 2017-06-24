#ifndef LOGGER_SOCKET_H
#define LOGGER_SOCKET_H
#define PORT 8080

class serve {
public:
    char encr[256]="Enter filename to encrypt :";
    char decr[256]="Enter filename to decrypt :";
    char suc_encr[256]="File encrypted successfully  ";
    char suc_decr[256]="File decrypted successfully  ";
    char log_start[256]="Logger started successfully  ";
    char log_stop[256]="Logger stopped successfully  ";
    char *infilename;
    void sock();
};
#endif //LOGGER_SOCKET_H