//
//  MYAddCommand.m
//  DynamicCreation
//
//  Created by Wayne on 3/26/14.
//  Copyright (c) 2014 Wayne. All rights reserved.
//

#import "MYAddCommand.h"

@implementation MYAddCommand
+(MYCommandReturn)executeWithStack:(MYStack *)stack{
    if([stack count]<2)
        return MYError;
    NSString *value1 = [stack pop];
    NSString *value2 = [stack pop];
    double result = [value2 doubleValue] + [value1 doubleValue];
    NSString *resultString = [NSString stringWithFormat:@"%f",result];
    
    [stack push:resultString];
    return MYSuccess;
}
@end
