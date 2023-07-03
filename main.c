#include <stdio.h>
#include "operations.h"

int main(){

    int menu = 0;
    int argA = 0;
    int argB = 0;

    while(menu != 5){
        scanf("%d %d %d", &menu, &argA, &argB);
        if(menu == 1)
            printf("\n%d + %d = %d\n", argA, argB, addition(argA, argB));
        else if(menu == 2)
            printf("\n%d - %d = %d\n", argA, argB, soustraction(argA, argB));
        else if(menu == 3)
            printf("\n%d * %d = %d\n", argA, argB, multiplication(argA, argB));
        else if(menu == 4)
            printf("\n%d / %d = %d\n", argA, argB, division(argA, argB));
    }
    return 0;
}