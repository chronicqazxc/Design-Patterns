//
//  OperatorDiv.m
//  Factory
//
//  Created by Wayne Hsiao on 9/5/15.
//  Copyright (c) 2015 Wayne Hsiao. All rights reserved.
//

#import "OperatorDiv.h"

@implementation OperatorDiv
- (double)resultByNumberA:(double)numberA andNumberB:(double)numberb {
    return [self result];
}

- (double)result {
    [self checkDivisor];
    double result = self.numberA / self.numberB;
    return result;
}

- (void)checkDivisor {
    NSAssert(self.numberB != 0, @"Divisor can't be zero");
}
@end
