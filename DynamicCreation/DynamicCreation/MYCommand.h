//
//  MYCommand.h
//  DynamicCreation
//
//  Created by Wayne on 3/26/14.
//  Copyright (c) 2014 Wayne. All rights reserved.
//

#import <Foundation/Foundation.h>
@class MYStack;
typedef enum{
    MYSuccess = 0,
    MYError = 1,
    MYHaltException = 2
} MYCommandReturn;

@interface MYCommand : NSObject
+(MYCommandReturn)executeWithStack:(MYStack *)stack;
@end
