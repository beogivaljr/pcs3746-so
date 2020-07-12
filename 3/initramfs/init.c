#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mount.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>
#include <fcntl.h>
#include <time.h>

void panic(const char *msg)
{
	fprintf(stderr, "%s: %s (errno = %d)\n", msg, strerror(errno), errno);
	exit(-1);
}

void mount_fs()
{
	printf("Mounting filesystems\n");
	// If /sys is not created, make it read-only (mode = 444)
	if (mkdir("/sys", 0x124) && errno != EEXIST)
		panic("mkdir");
	if (mount("none", "/sys", "sysfs", 0, ""))
		panic("mount");
}

void set_buffer_offset(int fd, char *buf, int size) {
	if (lseek(fd, 0, SEEK_SET)) {
		perror("lseek");
	} else {
		int offset = read(fd, buf, size);
		buf[offset] = 0;
	}
}

int main()
{
	mount_fs();

	int fd = open("/sys/kernel/last_interrupt", O_RDONLY);
	char interrupt[300];
	const struct timespec ts = {.tv_sec = 2, .tv_nsec = 0 };

	for(;;) {
		set_buffer_offset(fd, interrupt, 250);
		printf("%s", interrupt);
		nanosleep(&ts, NULL);
	}
	return 0;
}