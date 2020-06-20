cmd_fs/nls/nls_base.ko := arm-linux-gnueabi-ld -EL -r  -T ./scripts/module-common.lds --build-id  -o fs/nls/nls_base.ko fs/nls/nls_base.o fs/nls/nls_base.mod.o ;  true
