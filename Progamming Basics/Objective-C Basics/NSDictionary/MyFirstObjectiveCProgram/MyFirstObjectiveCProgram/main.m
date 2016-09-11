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
    NSDictionary *book = @{ @"title": @"The Cat in the Hat", @"author": @"Dr. Seuss" };
    NSLog(@"book %@", book);
    
    NSString *string = [book objectForKey:@"author"];
    NSLog(@"string %@", string);
    
    NSMutableDictionary *mutableBook =[NSMutableDictionary dictionaryWithDictionary:book];
    
    [mutableBook setObject:@1957 forKey:@"year"];
    NSLog(@"%@", mutableBook);
    
    for (NSString *string in [mutableBook allKeys]) {
        NSLog(@"key %@ value %@", string, [mutableBook objectForKey:string]);
    }
    return 0;
}
