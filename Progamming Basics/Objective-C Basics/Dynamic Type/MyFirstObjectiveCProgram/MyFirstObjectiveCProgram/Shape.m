//
//  Shape.m
//  MyFirstObjectiveCProgram
//
//  Created by Tuba Abbasi on 6/17/15.
//  Copyright (c) 2015 treehouse. All rights reserved.
//

#import "Shape.h"

@implementation Shape

@synthesize color = _color;

-(double)area {
    return -1;
}

-(BOOL)hitTestAtLocation:(CGPoint)location {
    return NO;
}

-(NSString *)description {
    return [NSString stringWithFormat:@"I am %@. My parent is %@. area %F.", [self class], [self superclass], [self area]];
}

@end
