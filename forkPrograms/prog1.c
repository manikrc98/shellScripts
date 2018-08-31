#include<stdio.h>
#include<sys/wait.h>
int main()
{
    int p1,p2;
    p1=fork();
    if(p1==-1)
    {
        printf("Error");
        return 0;
    }
    else
    {
        printf("Fork 1 starts\n");
        printf("parent of Fork1 %d\n",getppid());
        printf("child of fork1 %d\n",getpid());
        printf("----------------\n");
    }
    p2=fork();
    printf("Fork 2 starts\n");
    printf("parent of fork 2 %d\n",getppid());
    printf("child of fork 2 %d\n",getpid());
    printf("END OF FORK 2\n");
    printf("----------------\n");
}