#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include <sys/mount.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>
#include "stack.h"
#include "queue.h"

int main()
{
  printf("-- Begin same list test --\n");
  for (int i = 0; i < 6; i++) {
    printf("QUEUE_INSERT %ld\n", same_list_queue_insert(10*i+i));
  }
  printf("\n");
  for (int i = 0; i < 7; i++) {
    printf("SAME_LIST_STACK_POP %ld\n", stack_pop());
  }
  printf("-- End same lists test --\n");
  printf("\n");
  printf("-------------------------------------------------------");
  printf("\n");

  printf("-- Begin same list test --\n");
  for (int i = 0; i < 6; i++) {
    printf("STACK_PUSH %ld\n", stack_push(2*i));
  }
  printf("\n");
  for (int i = 0; i < 7; i++) {
    printf("SAME_LIST_QUEUE_REMOVE %ld\n", same_list_queue_remove());
  }
  printf("-- End same lists test --\n");
  printf("\n");
  printf("-------------------------------------------------------");
  printf("\n");

  printf("-- Begin different lists test --\n");
  for (int i = 0; i < 6; i++) {
    printf("QUEUE_INSERT %ld\n", queue_insert(i));
    printf("STACK_PUSH  %ld\n", stack_push((i)));
  }
  printf("\n");
  for (int i = 0; i < 7; i++) {
    printf("QUEUE_REMOVE %ld\n", queue_remove());
    printf("STACK_POP %ld\n", stack_pop());
  }
  printf("-- End different lists test --\n");
  printf("-------------------------------------------------------");
  
  for (;;)
    sleep(1000);
  return 0;
}
