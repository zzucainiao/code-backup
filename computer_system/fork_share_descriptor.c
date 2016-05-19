#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/wait.h>
#include <unistd.h>
#include <fcntl.h>

int main (int argc, char **argv) {
    char c;
    int fd = open("foo.txt", O_RDONLY, 0);
    if(fork() == 0) {
        read(fd, &c, 1);
        printf("child process fd=%d c=%c\n", fd, c);
        exit(0);
    }
    wait(NULL);
    read(fd, &c, 1);
    printf("father process fd=%d c=%c\n", fd, c);
    return 0;
}
/*
 * abcd in foo.txt
 * stdout:
child process fd=3 c=a
father process fd=3 c=b
*/
