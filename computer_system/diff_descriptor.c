#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <fcntl.h>

int main (int argc, char **argv) {
    char c;
    int fd1 = open("foo.txt", O_RDONLY, 0);
    int fd2 = open("foo.txt", O_RDONLY, 0);
    read(fd1, &c, 1);
    read(fd2, &c, 1);
    printf("fd1=%d fd2=%d c=%c\n", fd1, fd2, c);
    return 0;
}
/*
 * abcd in foo.txt
 * stdout: fd1=3 fd2=4 c=a
*/
