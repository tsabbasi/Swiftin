//
//  main.m
//  MyFirstObjectiveCProgram
//
//  Created by turner on 9/26/13.
//  Copyright (c) 2013 treehouse. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "NSArray+Mahem.h"

int main()
{
    NSArray *letters = @[ @"alfa", @"bravo", @"charlie"];
    NSLog(@"letters %@", letters);

    
    NSLog(@"cap %@", [letters capitalizeStrings]);
    return 0;
}
