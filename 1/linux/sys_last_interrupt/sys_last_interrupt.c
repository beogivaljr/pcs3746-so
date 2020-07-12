#include <linux/linkage.h>
#include <linux/list.h>
#include <linux/module.h>
#include <linux/slab.h>
#include <linux/kobject.h>

static char *last_interrupt;

asmlinkage long sys_last_interrupt(char *irq)
{
	last_interrupt = irq;
	return 0;
}

static ssize_t last_interrupt_show(struct kobject *kobj, struct kobj_attribute *attr,
			    char *buf)
{
	return sprintf(buf, "%s\n", last_interrupt);
}

static ssize_t last_interrupt_store(struct kobject *kobj, struct kobj_attribute *attr,
			 const char *buf, size_t count)
{
	sscanf(buf, "%s", last_interrupt);
	return count;
}

static struct kobj_attribute last_interrupt_attribute = __ATTR(last_interrupt, 0660, last_interrupt_show,  last_interrupt_store);

static struct attribute *attrs[] = {
	&last_interrupt_attribute.attr,
	NULL,
};

static struct kobject *sys_last_interrupt_kobject;

static int __init sys_last_interrupt_init(void)
{
	int retval;
	sys_last_interrupt_kobject = kernel_kobj;
	if (!sys_last_interrupt_kobject)
		return -ENOMEM;

	retval = sysfs_create_file(sys_last_interrupt_kobject, *attrs);
	if (retval) 
		kobject_put(sys_last_interrupt_kobject);

	return retval;
}

static void __exit sys_last_interrupt_exit(void)
{
	kobject_put(sys_last_interrupt_kobject);
}

module_init(sys_last_interrupt_init);
module_exit(sys_last_interrupt_exit);
MODULE_LICENSE("GPL");
MODULE_DESCRIPTION("Last interrupt module");