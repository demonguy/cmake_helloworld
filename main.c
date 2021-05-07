#include "stdio.h"

int add(int x, int y);

int main()
{
	int a = 1;
	int b = 3;
	int c = add(a, b);
    printf("HelloWorld, add result is %d\n", c);
    return 0;
}