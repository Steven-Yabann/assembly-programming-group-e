#include <stdio.h>

int factorial (int n) {
    int res;
    if (n <= 0) {
        return 1;
    }
    for (int i = 1; i < n; i++) {
        res *= i;
    }
    
    return res;
}

int main () {
    int n;
    printf("Enter a number \n");
    scanf("%d", &n);
    printf("factorial is %d \n", factorial(n));
    return 0;
}



