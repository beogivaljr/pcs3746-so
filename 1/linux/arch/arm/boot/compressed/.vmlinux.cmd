cmd_arch/arm/boot/compressed/vmlinux := arm-linux-gnueabi-ld -EL    --defsym _kernel_bss_size=137048 -p --no-undefined -X -T arch/arm/boot/compressed/vmlinux.lds arch/arm/boot/compressed/head.o arch/arm/boot/compressed/piggy.o arch/arm/boot/compressed/misc.o arch/arm/boot/compressed/decompress.o arch/arm/boot/compressed/debug.o arch/arm/boot/compressed/string.o arch/arm/boot/compressed/lib1funcs.o arch/arm/boot/compressed/ashldi3.o arch/arm/boot/compressed/bswapsdi2.o -o arch/arm/boot/compressed/vmlinux
