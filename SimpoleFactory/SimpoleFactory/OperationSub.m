//
//  OperationSub.m
//  SimpoleFactory
//
//  Created by Wayne Hsiao on 9/5/15.
//  Copyright (c) 2015 Wayne Hsiao. All rights reserved.
//

#import "OperationSub.h"

@implementation OperationSub
- (double)result {
    double result = 0;
    result = self.numberA - self.numberB;
    return result;
}
@end
