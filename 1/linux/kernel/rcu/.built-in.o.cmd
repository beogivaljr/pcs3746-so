cmd_kernel/rcu/built-in.o :=  arm-linux-gnueabi-ld -EL    -r -o kernel/rcu/built-in.o kernel/rcu/update.o kernel/rcu/sync.o kernel/rcu/srcutiny.o kernel/rcu/tiny.o kernel/rcu/rcu_segcblist.o 
