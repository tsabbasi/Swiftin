//
//  main.c
//  MyFirstCProgram
//
//  Created by turner on 9/26/13.
//  Copyright (c) 2013 treehouse. All rights reserved.
//

#include <stdio.h>

int funky_math(int a, int b); // declaration
int main()
{
    int foo = 24;
    int bar = 35;
    
    int lots = funky_math(foo, bar) * funky_math(foo, bar);
    printf("funky math %d\n", lots);
    return 0;
}

int funky_math(int a, int b) { // implementation
    return a + b + 343;
    
}

