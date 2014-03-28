//
//  MYCommand.m
//  DynamicCreation
//
//  Created by Wayne on 3/26/14.
//  Copyright (c) 2014 Wayne. All rights reserved.
//

#import "MYCommand.h"
#import "MYStack.h"

@implementation MYCommand

+(MYCommandReturn)executeWithStack:(MYStack *)stack{
    NSLog(@"%@: not implemented yet.\n",[self className]);
    return MYError;
}
@end
