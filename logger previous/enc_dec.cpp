#include "enc_dec.h"
#include<iostream>
#include<fstream>

using namespace std;

void enc_dec::Encrypt(char *fname)
{
    char  ch, choice;
    fstream fps,fpt;
    fps.open(fname);
    fpt.open("temp.txt");
    while(fps.eof()==0)
    {
        fps>>ch;
        ch=ch+10;
        fpt<<ch;
    }
    fps.close();
    fpt.close();
    fps.open(fname);
    fpt.open("temp.txt");
    while(fpt.eof()==0)
    {
        fpt>>ch;
        fps<<ch;
    }
    fps.close();
    fpt.close();
}

void enc_dec::Decrypt(char *fname) {
    char ch, choice;
    fstream fps,fpt;
    fps.open(fname);
    fpt.open("temp.txt");
    while(fpt.eof()==0)
    {
        fpt>>ch;
        ch=ch-10;
        fps<<ch;
    }
    fps.close();
    fpt.close();
}
