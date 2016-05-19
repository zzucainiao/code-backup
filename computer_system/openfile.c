#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <fcntl.h>

#define DEF_MODE S_IWUSR|S_IRUSR|S_IWGRP|S_IRGRP|S_IWOTH|S_IROTH
#define DEF_UMASK S_IWGRP|S_IWOTH
int main (int argc, char **argv) {
    umask(DEF_UMASK);
    int fd = open("foo.txt", O_CREAT|O_TRUNC|O_WRONLY, DEF_MODE);
    printf("file desc: %d\n", fd);
    
    struct stat st;
    char *type, *readok;
    stat(argv[1], &st);
    if(S_ISREG(st.st_mode))
        type = "regular";
    else if(S_ISDIR(st.st_mode))
        type = "directory";
    else
        type = "other";
    if((st.st_mode & S_IRUSR))
        readok = "yes";
    else
        readok = "no";
    printf("type: %s, read: %s\n", type, readok);
    return 0;
}
