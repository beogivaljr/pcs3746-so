cmd_kernel/locking/built-in.o :=  arm-linux-gnueabi-ld -EL    -r -o kernel/locking/built-in.o kernel/locking/mutex.o kernel/locking/semaphore.o kernel/locking/rwsem.o kernel/locking/percpu-rwsem.o kernel/locking/rtmutex.o kernel/locking/rwsem-xadd.o 
