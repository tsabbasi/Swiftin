//
//  main.c
//  MyFirstCProgram
//
//  Created by turner on 9/26/13.
//  Copyright (c) 2013 treehouse. All rights reserved.
//

#include <stdio.h>

typedef struct {
    float center[3];
    float radius;
} Sphere;

Sphere makeSphere(float *c, float r) ;
int main()
{
    float c[] = {23, 45, 67};
    float r = 32;
    Sphere ball = makeSphere(c, r);
    
    
    printf("center %f %f %f radius %f\n", ball.center[0], ball.center[1], ball.center[2], ball.radius);
    
    return 0;
}

Sphere makeSphere(float *c, float r) {
    // *c pointing to an array
    
    Sphere sphere;
    sphere.center[0] = c[0];
    sphere.center[1] = c[1];
    sphere.center[2] = c[2];
    
    sphere.radius = r;
    
    return sphere;
}

