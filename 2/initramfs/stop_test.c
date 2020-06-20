#include <stdio.h>
#include <unistd.h>
#include <time.h>

#include "stop.h"

int main()
{
	pid_t pid_1 = fork();
	if (pid_1 == -1) {
		perror("fork");
		return -1;
	} else if (pid_1) {
		pid_t pid_2 = fork();
		if (pid_2 == -1) {
			perror("fork");
			return -1;
		} else if (pid_2) {
			for (;;) {
                   		const struct timespec ts2 = {.tv_sec = 7, .tv_nsec = 0 };
				const struct timespec ts4 = {.tv_sec = 7, .tv_nsec = 0 };
                                nanosleep(&ts2, NULL);	
				stop_process(pid_1);
                                nanosleep(&ts4, NULL);
				continue_process();
                                nanosleep(&ts2, NULL);
				stop_process(pid_2);
                                nanosleep(&ts4, NULL);
				continue_process();
			}
		} else {
			for (;;) {
				const struct timespec ts = {.tv_sec = 0, .tv_nsec = 5e8 };
				nanosleep(&ts, NULL);
				printf("2\n");
			}
		}
	} else {
		for (;;) {
			const struct timespec ts = {.tv_sec = 0, .tv_nsec = 5e8 };
			nanosleep(&ts, NULL);
			printf("1\n");
		}
	}
}
