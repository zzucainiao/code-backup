#!/bin/bash 
A=B 
echo "PID for 1.sh before exec/source/fork: $$" 
export A 
echo "1.sh: \$A is $A" 
case $1 in 
    exec) 
        echo "using exec..." 
        exec ./2.sh ;; 
    source) 
        echo "using source..." 
        . ./2.sh ;; 
    *) 
        echo "using fork by default..." 
        ./2.sh ;; 
esac 
echo "PID for 1.sh after exec/source/fork: $$" 
echo "1.sh: \$A is $A" 

#fork 开一个子进程，改变的环境变量不被带回
#sorce 在当前进程执行，执行完会返回原进程继续执行
#exec 在当前进程执行，执行后不返回原进程 即原进程剩下语句不再执行
