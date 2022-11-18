#include<stdio.h>
#include<stdlib.h>
#include<sys/syscall.h>
#include<pthread.h>
#include<semaphore.h>
void *producer();
void *consumer();
typedef struct{
        int buff[20];
        sem_t full,empty;
        
}shared;
shared sh;
int item;
int in=0,out=0;
sem_t mutex;
int main()
{
        pthread_t ptid1,ptid2,ctid1;
        sem_init(&sh.empty,0,20);
        sem_init(&sh.full,0,0);
        sem_init(&mutex,0,1);
        
        pthread_create(&ptid1,NULL,producer,NULL);
        pthread_create(&ptid2,NULL,producer,NULL);
        pthread_create(&ctid1,NULL,consumer,NULL);
        
        pthread_join(ptid1,NULL);
        pthread_join(ctid1,NULL);
        pthread_join(ptid2,NULL);
        
        return 0;
}

        void *producer()
        {
                int ptid;
                while(1)
                {
                        item=in;
                        sem_wait(&sh.empty);
                        sem_wait(&mutex);
                       
                       
                        sh.buff[in++]=item;
                         printf("\nproducer thread id and producer item:%d,%d\n", syscall(SYS_gettid,ptid),item);
                        sem_post(&mutex);
                        sem_post(&sh.full);
                        sleep(2);
                }
        }
        
        void *consumer()
        {
                int ctid;
               //sleep(1);
                while(1)
                {
                        while(out<=in)
                        {
                             sem_wait(&sh.full);
                             sem_wait(&mutex); 
                             item=sh.buff[out++];
                             printf("\nconsumer thread id and consumer item:%d,%d\n",syscall(SYS_gettid,ctid),item);
                                    
                            sem_post(&mutex);
                            sem_post(&sh.empty);
                                    sleep(2);
                        }
                }
        }
        
        
        
        /*output
        student@student-OptiPlex-390:~$ cd Desktop
student@student-OptiPlex-390:~/Desktop$ gcc g3.c -lpthread
student@student-OptiPlex-390:~/Desktop$ ./a.out

producer thread id and producer item:3599,0

producer thread id and producer item:3598,1

consumer thread id and consumer item:3600,0

producer thread id and producer item:3599,2

producer thread id and producer item:3598,3

consumer thread id and consumer item:3600,1

producer thread id and producer item:3599,4

producer thread id and producer item:3598,5

consumer thread id and consumer item:3600,2

producer thread id and producer item:3599,6

producer thread id and producer item:3598,7

consumer thread id and consumer item:3600,3

producer thread id and producer item:3599,8

consumer thread id and consumer item:3600,4
*/
              
