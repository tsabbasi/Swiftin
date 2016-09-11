//
//  main.m
//  MyFirstObjectiveCProgram
//
//  Created by turner on 9/26/13.
//  Copyright (c) 2013 treehouse. All rights reserved.
//

#import <Cocoa/Cocoa.h>

int main()
{
    NSArray *foo = @[ @"f", @"o", @"o"];
    NSLog(@"foo %@", foo);
    
    for (NSString *string in foo) { // looping through each string item in the array
        NSLog(@"%@", string);
        
    }
    
    NSString *thang = foo[2]; // retreiving an item from an array
    NSLog(@"%@", thang);
    
    NSMutableArray *lots = [[NSMutableArray alloc] init]; // mutable array
    lots[0] = @"bravo";
    lots[1] = @"lima";
    lots[2] = @"charlie";
    lots[3] = @"delta";
    NSLog(@"%@", lots);
    
    [lots removeObjectAtIndex:2]; // removing an object from an array
    NSLog(@"%@", lots);
    
    return 0;
}
