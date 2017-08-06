#include <stdio.h>
int function1(int a, int b) {
	if( a > b )
		return a;
	return b;
}

void function2( void ) {
	int c = 1;
	begin:
		printf("%d\n", c);

		if( c > 10 )
			return 0;
		c++;
		goto begin;
}

int main() {
	int x;
	x = function1(3,5);
	return 0;
}
