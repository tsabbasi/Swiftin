//
//  Sphere.h
//  MyFirstObjectiveCProgram
//
//  Created by Tuba Abbasi on 6/16/15.
//  Copyright (c) 2015 treehouse. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Sphere : NSObject // Sphere is a subclass of NSObject
@property(nonatomic) float radius;
@property(nonatomic, strong) NSArray *center;

-(void)setCenter: (NSArray *)center radius:(float)radius;

@end
