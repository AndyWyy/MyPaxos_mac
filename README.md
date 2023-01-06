# MyPaxos

基于https://github.com/lyandut/HUST-Invictus修改的Paxos代码，可以在MacOS操作系统上正确运行

## USEAGE

首先需要对1.sh进行修改，/Users/wuyiyang/修改为自己用户目录

```shell
cd MyPaxos_mac
mkdir obj
mkdir bin

zsh ./1.sh
```

## Change

与原本的代码相比做了如下修改：

修改内容：

Paxos/src/lib/Lock.cpp中

```C++
int kind = PTHREAD_MUTEX_RECURSIVE_NP;
```

修改为

```C++
int kind = PTHREAD_MUTEX_RECURSIVE;
```

Paxos/src/lib/Thread.cpp中

```C++
if ( 0 != (nError = pthread_mutexattr_settype( &mutexattr, PTHREAD_MUTEX_TIMED_NP )) ) return ;
```

修改为

```C++
	if ( 0 != (nError = pthread_mutexattr_settype( &mutexattr, PTHREAD_MUTEX_NORMAL )) ) return ;
```

Paxos/src/lib/mapi.cpp中

```C++
#include <Linux/unistd.h>

#define gettid() syscall(__NR_gettid)
```

修改为

```C++
#include <unistd.h>

#define gettid() syscall(SYS_gettid)
```









