//
//  main.c
//  MyFirstCProgram
//
//  Created by turner on 9/26/13.
//  Copyright (c) 2013 treehouse. All rights reserved.
//

#include <stdio.h>

int main()
{

    int a = 9;
    printf("a %d\n", a);
    
    int c = a++; // assign a to c and then do this: a + 1
    printf("c %d a %d\n", c, a);
    
    int d = --a; // decrement a first and then assign a to d
    printf("c %d a %d\n", d, a);
    
    int b = a % 4;
    printf("b %d a %d\n", b, a);
    
    float fa = 5.0 / .5;
    printf("fa %f\n", fa);
    
    fa *= 10;
    printf("fa %f\n", fa);
    
    return 0;
}

