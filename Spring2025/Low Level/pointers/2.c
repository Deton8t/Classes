#include<stdio.h>
int main()
{
	printf("%d\n", sizeof(void *));
	printf("%d\n", sizeof(void));
	return 0;
}

/*
Answer?
8
1

Why? 
size of pointer depends on the machine architecture.
size of void data type (for organizational purposes)is always 1.

*/


