#include <asm/barrier.h>
#include <linux/linkage.h>
#include <linux/list.h>
#include <linux/module.h>
#include <linux/sched.h>
#include <linux/slab.h>
#include <linux/wait.h>
#include <asm/ptrace.h>
#include <asm/switch_to.h>
#include <asm/thread_info.h>
#include <asm/processor.h>
#include <linux/sched/task_stack.h>

#define set_task_state(tsk, state_value)		\
	do { (tsk)->state = (state_value); smp_mb(); } while (0)

DECLARE_WAIT_QUEUE_HEAD(queue);

static int autoremove_autofree_wake_function(wait_queue_t *wait, unsigned mode, int sync, void *key)
{
	int ret = default_wake_function(wait, mode, sync, key);

	if (ret) {
		list_del_init(&wait->task_list);
		kfree(wait);
	}
	return ret;
}

static long stop_process(struct task_struct *p)
{
	unsigned long flags;

	struct pt_regs *regs = current_pt_regs();
	struct pt_regs *task_pt_regs = task_pt_regs(p);
	wait_queue_t *wait = kmalloc(sizeof(*wait), GFP_KERNEL);
	if (!wait)
		return -1;
	init_wait(wait);
	wait->private = p;
	wait->func = autoremove_autofree_wake_function;
	wait->flags |= WQ_FLAG_EXCLUSIVE;

	spin_lock_irqsave(&queue.lock, flags);
	__add_wait_queue_tail(&queue, wait);
	set_task_state(p, TASK_STOPPED);
	spin_unlock_irqrestore(&queue.lock, flags);
    // pr_info("User R0 was %p\n", (void *)regs->ARM_r0);
    // pr_info("User R1 was %p\n", (void *)regs->ARM_r1);
    // pr_info("User R2 was %p\n", (void *)regs->ARM_r2);
    // pr_info("User R3 was %p\n", (void *)regs->ARM_r3);
    // pr_info("User R4 was %p\n", (void *)regs->ARM_r4);
    // pr_info("User R5 was %p\n", (void *)regs->ARM_r5);
    // pr_info("User R6 was %p\n", (void *)regs->ARM_r6);
    // pr_info("User R7 was %p\n", (void *)regs->ARM_r7);
    // pr_info("User R8 was %p\n", (void *)regs->ARM_r8);
    // pr_info("User R9 was %p\n", (void *)regs->ARM_r9);
    // pr_info("User R10 was %p\n", (void *)regs->ARM_r10);
    // pr_info("User LR was %p\n", (void *)regs->ARM_lr);
    // pr_info("User IP was %p\n", (void *)regs->ARM_ip);
    // pr_info("User SP was %p\n", (void *)regs->ARM_sp);
    // pr_info("User FP was %p\n", (void *)regs->ARM_fp);
    // pr_info("User CPSR was %p\n", (void *)regs->ARM_cpsr);
    // pr_info("User PC was %p\n", (void *)regs->ARM_pc);
	pr_info("Task R0 was %p\n", (void *)task_pt_regs->ARM_r0);
    pr_info("Task R1 was %p\n", (void *)task_pt_regs->ARM_r1);
    pr_info("Task R2 was %p\n", (void *)task_pt_regs->ARM_r2);
    pr_info("Task R3 was %p\n", (void *)task_pt_regs->ARM_r3);
    pr_info("Task R4 was %p\n", (void *)task_pt_regs->ARM_r4);
    pr_info("Task R5 was %p\n", (void *)task_pt_regs->ARM_r5);
    pr_info("Task R6 was %p\n", (void *)task_pt_regs->ARM_r6);
    pr_info("Task R7 was %p\n", (void *)task_pt_regs->ARM_r7);
    pr_info("Task R8 was %p\n", (void *)task_pt_regs->ARM_r8);
    pr_info("Task R9 was %p\n", (void *)task_pt_regs->ARM_r9);
    pr_info("Task R10 was %p\n", (void *)task_pt_regs->ARM_r10);
    pr_info("Task LR was %p\n", (void *)task_pt_regs->ARM_lr);
    pr_info("Task IP was %p\n", (void *)task_pt_regs->ARM_ip);
    pr_info("Task SP was %p\n", (void *)task_pt_regs->ARM_sp);
    pr_info("Task FP was %p\n", (void *)task_pt_regs->ARM_fp);
    pr_info("Task CPSR was %p\n", (void *)task_pt_regs->ARM_cpsr);
    pr_info("Task PC was %p\n", (void *)task_pt_regs->ARM_pc);
	
	return 0;
}

asmlinkage long sys_stop_process(int pid)
{
	struct task_struct *p = find_task_by_vpid(pid);
	// struct pt_regs *regs = current_pt_regs();
 //    pr_info("User R0 was %p\n", (void *)regs->ARM_r0);
 //    pr_info("User R1 was %p\n", (void *)regs->ARM_r1);
 //    pr_info("User R2 was %p\n", (void *)regs->ARM_r2);
 //    pr_info("User R3 was %p\n", (void *)regs->ARM_r3);
 //    pr_info("User R4 was %p\n", (void *)regs->ARM_r4);
 //    pr_info("User R5 was %p\n", (void *)regs->ARM_r5);
 //    pr_info("User R6 was %p\n", (void *)regs->ARM_r6);
 //    pr_info("User R7 was %p\n", (void *)regs->ARM_r7);
 //    pr_info("User R8 was %p\n", (void *)regs->ARM_r8);
 //    pr_info("User R9 was %p\n", (void *)regs->ARM_r9);
 //    pr_info("User R10 was %p\n", (void *)regs->ARM_r10);
 //    pr_info("User LR was %p\n", (void *)regs->ARM_lr);
 //    pr_info("User IP was %p\n", (void *)regs->ARM_ip);
 //    pr_info("User SP was %p\n", (void *)regs->ARM_sp);
 //    pr_info("User FP was %p\n", (void *)regs->ARM_fp);
 //    pr_info("User CPSR was %p\n", (void *)regs->ARM_cpsr);
 //    pr_info("User PC was %p\n", (void *)regs->ARM_pc);

	return p ? stop_process(p) : -1;
}

asmlinkage long sys_continue_process(void)
{
	__wake_up(&queue, TASK_STOPPED, 1, NULL);
	struct pt_regs *regs = current_pt_regs();
    pr_info("User R0 was %p\n", (void *)regs->ARM_r0);
    pr_info("User R1 was %p\n", (void *)regs->ARM_r1);
    pr_info("User R2 was %p\n", (void *)regs->ARM_r2);
    pr_info("User R3 was %p\n", (void *)regs->ARM_r3);
    pr_info("User R4 was %p\n", (void *)regs->ARM_r4);
    pr_info("User R5 was %p\n", (void *)regs->ARM_r5);
    pr_info("User R6 was %p\n", (void *)regs->ARM_r6);
    pr_info("User R7 was %p\n", (void *)regs->ARM_r7);
    pr_info("User R8 was %p\n", (void *)regs->ARM_r8);
    pr_info("User R9 was %p\n", (void *)regs->ARM_r9);
    pr_info("User R10 was %p\n", (void *)regs->ARM_r10);
    pr_info("User LR was %p\n", (void *)regs->ARM_lr);
    pr_info("User IP was %p\n", (void *)regs->ARM_ip);
    pr_info("User SP was %p\n", (void *)regs->ARM_sp);
    pr_info("User FP was %p\n", (void *)regs->ARM_fp);
    pr_info("User CPSR was %p\n", (void *)regs->ARM_cpsr);
    pr_info("User PC was %p\n", (void *)regs->ARM_pc);
	return 0;
}

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Tiago Koji Castro Shibata <tishi@linux.com>");
MODULE_AUTHOR("Eric Rodrigues Pires <ericpires9@gmail.com>");
MODULE_DESCRIPTION("Process stop/continue module");
