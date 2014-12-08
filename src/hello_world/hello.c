#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/init.h>

MODULE_AUTHOR("Remonda");
MODULE_DESCRIPTION("A Simple Hello World module");
MODULE_LICENSE("GPL");

static int __init hello_init(void)
{
	pr_debug("Hello world!\n");
	/* Non-zero return means that the module couldn't be loaded. */
	return 0;
}

static void __exit hello_exit(void)
{
	pr_debug("Cleaning up module.\n");
}

module_init(hello_init);
module_exit(hello_exit);

