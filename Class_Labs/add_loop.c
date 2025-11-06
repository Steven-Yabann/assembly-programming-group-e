#include <stdio.h>

extern int sum(int a, int b);

int main() {
    printf("Sum is %d \n", sum(15, 25));
    return 0;
}