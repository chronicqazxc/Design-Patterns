//
//  MYPrintCommand.m
//  DynamicCreation
//
//  Created by Wayne on 3/26/14.
//  Copyright (c) 2014 Wayne. All rights reserved.
//

#import "MYPrintCommand.h"

@implementation MYPrintCommand
+(MYCommandReturn)executeWithStack:(MYStack *)stack{
    if([stack count] < 1)
        return MYError;
    fprintf(stdout, "%s\n",[[stack peekAtIndex:0] cStringUsingEncoding:NSASCIIStringEncoding]);
    return MYSuccess;
}
@end
