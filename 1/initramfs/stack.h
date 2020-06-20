#define _GNU_SOURCE
#include <unistd.h>
#include <sys/syscall.h>

#define __NR_stack_push 398
#define __NR_stack_pop 399
#define __NR_same_list_queue_insert 404
#define __NR_same_list_queue_remove 405



long stack_push(int value)
{
	return syscall(__NR_stack_push, value);
}

long stack_pop()
{
	return syscall(__NR_stack_pop);
}

long same_list_queue_insert(int value)
{
	return syscall(__NR_same_list_queue_insert, value);
}

long same_list_queue_remove()
{
	return syscall(__NR_same_list_queue_remove);
}
