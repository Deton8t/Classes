
#include <stdio.h>
void showbits( unsigned int x )
{
    int i=0;
    for (i = (sizeof(int) * 8) - 1; i >= 0; i--)
    {
       putchar(x & (1u << i) ? '1' : '0');
    }
    puts("");
}

int main(int argc, char* argv[]) {
    int a,b;
    a = 15;
    b = 5;
    printf("a: "); 
    showbits(a);
    printf("b: ");
    showbits(b);
    puts("a & b");
    showbits(a&b);
    puts("a | b");
    showbits(a|b);
    puts("a ^ b");
    showbits(a^b);
}
