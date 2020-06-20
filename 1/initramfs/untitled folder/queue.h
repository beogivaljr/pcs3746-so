#define _GNU_SOURCE
#include <unistd.h>
#include <sys/syscall.h>

#define __NR_queue_insert 406
#define __NR_queue_remove 407

long queue_insert(int value)
{
        return syscall(__NR_queue_insert, value);
}

long queue_remove()
{
        return syscall(__NR_queue_remove);
}
