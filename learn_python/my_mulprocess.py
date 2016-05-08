#!/usr/bin/env python3
from multiprocessing import Pool
import os
import time, random

def my_fork():
    print('process (%s) start...' % (os.getpid()))
    pid = os.fork()
    if pid == 0:
        print('I am child process (%s) and my parent is (%s)' % (os.getpid(), os.getppid()))
    else:
        print('I (%s) just create a child process (%s)' % (os.getpid(), pid))
def long_time_task(name):
    print('Run task %s (%s)...' % (name, os.getpid()))
    start = time.time()
    time.sleep(random.random() * 3)
    end = time.time()
    print('Task %s runs %0.2f sceconds.' % (name, (end-start)))

if __name__ == '__main__':

    print('parent process %s.' % (os.getpid()))
    p = Pool(4)
    print(dir(p))
    for i in range(5):
        p.apply_async(long_time_task, args=(i,))
    print('Waitong for all subprocess done...')
    p.close()
    p.join()
    print('All subprocesses done.')
    my_fork()

