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

    float numbers[] = {11.11, 22.22, 33.33};
    printf("float %ld bytes\n", sizeof(float)); // the memory allocated for each float element
    printf("numbers %ld bytes\n", sizeof(numbers)); // the total memory allocated
    printf("array length %ld\n", sizeof(numbers)/sizeof(float)); // the length of the array
    
    return 0;
}

