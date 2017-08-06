#include <stddef.h>

int println(const char *buf) {

	size_t len = 0;
	while(buf[len] != 0)
		len++;

	asm("movl %0, %%ecx;"
	    "movl %1, %%edx;"
	    "movl $1, %%ebx;"
	    "movl $4, %%eax;"
	    "int $0x80;"
	    :
	    :"r"(buf), "r"(len+1)
	    :);

	return len;
}

int main() {
	println("Hello World\n");
	println("This is a C wrapper!\n");

	return 0;
}
