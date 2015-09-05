//
//  OperationDiv.m
//  SimpoleFactory
//
//  Created by Wayne Hsiao on 9/5/15.
//  Copyright (c) 2015 Wayne Hsiao. All rights reserved.
//

#import "OperationDiv.h"

@implementation OperationDiv
- (double)result {
    NSAssert(self.numberB != 0, @"Divisor can't be zero");
    double result = 0;
    result = self.numberA / self.numberB;
    return result;
}
@end
