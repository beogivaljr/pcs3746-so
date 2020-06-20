	.arch armv5te
	.fpu softvfp
	.eabi_attribute 20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute 21, 1	@ Tag_ABI_FP_exceptions
	.eabi_attribute 23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute 24, 1	@ Tag_ABI_align8_needed
	.eabi_attribute 25, 1	@ Tag_ABI_align8_preserved
	.eabi_attribute 26, 2	@ Tag_ABI_enum_size
	.eabi_attribute 30, 2	@ Tag_ABI_optimization_goals
	.eabi_attribute 34, 0	@ Tag_CPU_unaligned_access
	.eabi_attribute 18, 4	@ Tag_ABI_PCS_wchar_t
	.file	"bounds.c"
@ GNU C89 (Ubuntu/Linaro 5.4.0-6ubuntu1~16.04.4) version 5.4.0 20160609 (arm-linux-gnueabi)
@	compiled by GNU C version 5.4.0 20160609, GMP version 6.1.0, MPFR version 3.1.4, MPC version 1.0.3
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -nostdinc -I ./arch/arm/include
@ -I ./arch/arm/include/generated/uapi -I ./arch/arm/include/generated
@ -I ./include -I ./arch/arm/include/uapi -I ./include/uapi
@ -I ./include/generated/uapi -imultiarch arm-linux-gnueabi -D __KERNEL__
@ -D __LINUX_ARM_ARCH__=5 -U arm -D CC_HAVE_ASM_GOTO
@ -D KBUILD_BASENAME="bounds" -D KBUILD_MODNAME="bounds"
@ -isystem /usr/lib/gcc-cross/arm-linux-gnueabi/5/include
@ -include ./include/linux/kconfig.h -MD kernel/.bounds.s.d kernel/bounds.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv5te -mtune=arm9tdmi -mfloat-abi=soft -mtls-dialect=gnu
@ -auxbase-strip kernel/bounds.s -g -O2 -Wall -Wundef -Wstrict-prototypes
@ -Wno-trigraphs -Werror=implicit-function-declaration -Wno-format-security
@ -Wframe-larger-than=1024 -Wno-unused-but-set-variable
@ -Wdeclaration-after-statement -Wno-pointer-sign -Werror=implicit-int
@ -Werror=strict-prototypes -Werror=date-time
@ -Werror=incompatible-pointer-types -Werror=designated-init -std=gnu90
@ -fno-strict-aliasing -fno-common -fno-PIE -fno-dwarf2-cfi-asm
@ -fno-ipa-sra -funwind-tables -fno-delete-null-pointer-checks
@ -fno-stack-protector -fomit-frame-pointer -fno-var-tracking-assignments
@ -fno-strict-overflow -fconserve-stack -fverbose-asm
@ --param allow-store-data-races=0
@ options enabled:  -faggressive-loop-optimizations -falign-functions
@ -falign-jumps -falign-labels -falign-loops -fauto-inc-dec
@ -fbranch-count-reg -fcaller-saves -fchkp-check-incomplete-type
@ -fchkp-check-read -fchkp-check-write -fchkp-instrument-calls
@ -fchkp-narrow-bounds -fchkp-optimize -fchkp-store-bounds
@ -fchkp-use-static-bounds -fchkp-use-static-const-bounds
@ -fchkp-use-wrappers -fcombine-stack-adjustments -fcompare-elim
@ -fcprop-registers -fcrossjumping -fcse-follow-jumps -fdefer-pop
@ -fdevirtualize -fdevirtualize-speculatively -fearly-inlining
@ -feliminate-unused-debug-types -fexpensive-optimizations
@ -fforward-propagate -ffunction-cse -fgcse -fgcse-lm -fgnu-runtime
@ -fgnu-unique -fguess-branch-probability -fhoist-adjacent-loads -fident
@ -fif-conversion -fif-conversion2 -findirect-inlining -finline
@ -finline-atomics -finline-functions-called-once -finline-small-functions
@ -fipa-cp -fipa-cp-alignment -fipa-icf -fipa-icf-functions
@ -fipa-icf-variables -fipa-profile -fipa-pure-const -fipa-ra
@ -fipa-reference -fira-hoist-pressure -fira-share-save-slots
@ -fira-share-spill-slots -fisolate-erroneous-paths-dereference -fivopts
@ -fkeep-static-consts -fleading-underscore -flifetime-dse -flra-remat
@ -flto-odr-type-merging -fmath-errno -fmerge-constants
@ -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
@ -foptimize-sibling-calls -foptimize-strlen -fpartial-inlining -fpeephole
@ -fpeephole2 -fplt -fprefetch-loop-arrays -freg-struct-return
@ -freorder-blocks -freorder-functions -frerun-cse-after-loop
@ -fsched-critical-path-heuristic -fsched-dep-count-heuristic
@ -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
@ -fsched-pressure -fsched-rank-heuristic -fsched-spec
@ -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fschedule-insns
@ -fschedule-insns2 -fsection-anchors -fsemantic-interposition
@ -fshow-column -fshrink-wrap -fsigned-zeros -fsplit-ivs-in-unroller
@ -fsplit-wide-types -fssa-phiopt -fstdarg-opt -fstrict-volatile-bitfields
@ -fsync-libcalls -fthread-jumps -ftoplevel-reorder -ftrapping-math
@ -ftree-bit-ccp -ftree-builtin-call-dce -ftree-ccp -ftree-ch
@ -ftree-coalesce-vars -ftree-copy-prop -ftree-copyrename -ftree-cselim
@ -ftree-dce -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre
@ -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
@ -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop -ftree-pre
@ -ftree-pta -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slsr
@ -ftree-sra -ftree-switch-conversion -ftree-tail-merge -ftree-ter
@ -ftree-vrp -funit-at-a-time -funwind-tables -fvar-tracking -fverbose-asm
@ -fzero-initialized-in-bss -marm -mglibc -mlittle-endian
@ -mpic-data-is-text-relative -msched-prolog -mvectorize-with-neon-quad

	.text
.Ltext0:
	.align	2
	.global	foo
	.syntax unified
	.arm
	.type	foo, %function
foo:
	.fnstart
.LFB152:
	.file 1 "kernel/bounds.c"
	.loc 1 16 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 18 0
	.syntax divided
@ 18 "kernel/bounds.c" 1
	
.ascii "->NR_PAGEFLAGS #21 __NR_PAGEFLAGS"	@
@ 0 "" 2
	.loc 1 19 0
@ 19 "kernel/bounds.c" 1
	
.ascii "->MAX_NR_ZONES #2 __MAX_NR_ZONES"	@
@ 0 "" 2
	.loc 1 23 0
@ 23 "kernel/bounds.c" 1
	
.ascii "->SPINLOCK_SIZE #0 sizeof(spinlock_t)"	@
@ 0 "" 2
	.arm
	.syntax unified
	bx	lr	@
.LFE152:
	.fnend
	.size	foo, .-foo
	.section	.debug_frame,"",%progbits
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x3
	.ascii	"\000"
	.uleb128 0x1
	.sleb128 -4
	.uleb128 0xe
	.byte	0xc
	.uleb128 0xd
	.uleb128 0
	.align	2
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB152
	.4byte	.LFE152-.LFB152
	.align	2
.LEFDE0:
	.text
.Letext0:
	.file 2 "./include/linux/page-flags.h"
	.file 3 "./include/linux/mmzone.h"
	.file 4 "./arch/arm/include/asm/hwcap.h"
	.file 5 "./include/linux/printk.h"
	.file 6 "./include/linux/kernel.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x1dc
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x1
	.4byte	.LASF54
	.4byte	.LASF55
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.uleb128 0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF11
	.uleb128 0x5
	.4byte	.LASF43
	.byte	0x4
	.4byte	0x48
	.byte	0x2
	.byte	0x4a
	.4byte	0x150
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x7
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x9
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0xa
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0xb
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0xd
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0xe
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0xf
	.uleb128 0x6
	.4byte	.LASF28
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0x11
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x12
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0x13
	.uleb128 0x6
	.4byte	.LASF32
	.byte	0x14
	.uleb128 0x6
	.4byte	.LASF33
	.byte	0x15
	.uleb128 0x6
	.4byte	.LASF34
	.byte	0x9
	.uleb128 0x6
	.4byte	.LASF35
	.byte	0x9
	.uleb128 0x6
	.4byte	.LASF36
	.byte	0xd
	.uleb128 0x6
	.4byte	.LASF37
	.byte	0x9
	.uleb128 0x6
	.4byte	.LASF38
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF39
	.byte	0x9
	.uleb128 0x6
	.4byte	.LASF40
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF41
	.byte	0xd
	.uleb128 0x6
	.4byte	.LASF42
	.byte	0x11
	.byte	0
	.uleb128 0x7
	.4byte	.LASF44
	.byte	0x4
	.4byte	0x48
	.byte	0x3
	.2byte	0x125
	.4byte	0x174
	.uleb128 0x6
	.4byte	.LASF45
	.byte	0
	.uleb128 0x6
	.4byte	.LASF46
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF47
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.ascii	"foo\000"
	.byte	0x1
	.byte	0xf
	.4byte	.LFB152
	.4byte	.LFE152-.LFB152
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x4
	.byte	0xd
	.4byte	0x48
	.uleb128 0xa
	.4byte	0x41
	.4byte	0x19b
	.uleb128 0xb
	.byte	0
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x5
	.byte	0x3e
	.4byte	0x190
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x6
	.2byte	0x1c6
	.4byte	0x41
	.uleb128 0xa
	.4byte	0x72
	.4byte	0x1bd
	.uleb128 0xb
	.byte	0
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x6
	.2byte	0x210
	.4byte	0x1c9
	.uleb128 0x4
	.4byte	0x1b2
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x6
	.2byte	0x21b
	.4byte	0x1da
	.uleb128 0x4
	.4byte	0x1b2
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF27:
	.ascii	"PG_head\000"
.LASF9:
	.ascii	"char\000"
.LASF49:
	.ascii	"console_printk\000"
.LASF23:
	.ascii	"PG_reserved\000"
.LASF45:
	.ascii	"ZONE_NORMAL\000"
.LASF28:
	.ascii	"PG_mappedtodisk\000"
.LASF12:
	.ascii	"PG_locked\000"
.LASF16:
	.ascii	"PG_dirty\000"
.LASF26:
	.ascii	"PG_writeback\000"
.LASF42:
	.ascii	"PG_isolated\000"
.LASF24:
	.ascii	"PG_private\000"
.LASF33:
	.ascii	"__NR_PAGEFLAGS\000"
.LASF47:
	.ascii	"__MAX_NR_ZONES\000"
.LASF36:
	.ascii	"PG_fscache\000"
.LASF55:
	.ascii	"/home/student/src/linux\000"
.LASF14:
	.ascii	"PG_referenced\000"
.LASF35:
	.ascii	"PG_swapcache\000"
.LASF44:
	.ascii	"zone_type\000"
.LASF19:
	.ascii	"PG_waiters\000"
.LASF41:
	.ascii	"PG_double_map\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF30:
	.ascii	"PG_swapbacked\000"
.LASF34:
	.ascii	"PG_checked\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF54:
	.ascii	"kernel/bounds.c\000"
.LASF21:
	.ascii	"PG_owner_priv_1\000"
.LASF48:
	.ascii	"elf_hwcap\000"
.LASF43:
	.ascii	"pageflags\000"
.LASF4:
	.ascii	"unsigned int\000"
.LASF13:
	.ascii	"PG_error\000"
.LASF6:
	.ascii	"long long unsigned int\000"
.LASF37:
	.ascii	"PG_pinned\000"
.LASF20:
	.ascii	"PG_slab\000"
.LASF52:
	.ascii	"hex_asc_upper\000"
.LASF18:
	.ascii	"PG_active\000"
.LASF53:
	.ascii	"GNU C89 5.4.0 20160609 -mlittle-endian -mabi=aapcs-"
	.ascii	"linux -mno-thumb-interwork -mfpu=vfp -marm -march=a"
	.ascii	"rmv5te -mtune=arm9tdmi -mfloat-abi=soft -mtls-diale"
	.ascii	"ct=gnu -g -O2 -std=gnu90 -fno-strict-aliasing -fno-"
	.ascii	"common -fno-PIE -fno-dwarf2-cfi-asm -fno-ipa-sra -f"
	.ascii	"unwind-tables -fno-delete-null-pointer-checks -fno-"
	.ascii	"stack-protector -fomit-frame-pointer -fno-var-track"
	.ascii	"ing-assignments -fno-strict-overflow -fconserve-sta"
	.ascii	"ck --param allow-store-data-races=0\000"
.LASF25:
	.ascii	"PG_private_2\000"
.LASF5:
	.ascii	"long long int\000"
.LASF17:
	.ascii	"PG_lru\000"
.LASF8:
	.ascii	"sizetype\000"
.LASF31:
	.ascii	"PG_unevictable\000"
.LASF38:
	.ascii	"PG_savepinned\000"
.LASF2:
	.ascii	"short int\000"
.LASF51:
	.ascii	"hex_asc\000"
.LASF22:
	.ascii	"PG_arch_1\000"
.LASF39:
	.ascii	"PG_foreign\000"
.LASF10:
	.ascii	"long int\000"
.LASF46:
	.ascii	"ZONE_MOVABLE\000"
.LASF15:
	.ascii	"PG_uptodate\000"
.LASF0:
	.ascii	"signed char\000"
.LASF29:
	.ascii	"PG_reclaim\000"
.LASF50:
	.ascii	"panic_timeout\000"
.LASF11:
	.ascii	"_Bool\000"
.LASF32:
	.ascii	"PG_mlocked\000"
.LASF40:
	.ascii	"PG_slob_free\000"
	.ident	"GCC: (Ubuntu/Linaro 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",%progbits
