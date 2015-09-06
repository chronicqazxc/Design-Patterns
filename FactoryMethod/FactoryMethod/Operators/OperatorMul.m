//
//  OperatorMul.m
//  Factory
//
//  Created by Wayne Hsiao on 9/5/15.
//  Copyright (c) 2015 Wayne Hsiao. All rights reserved.
//

#import "OperatorMul.h"

@implementation OperatorMul
- (double)resultByNumberA:(double)numberA andNumberB:(double)numberb {
    return [self result];
}

- (double)result {
    double result = self.numberA * self.numberB;
    return result;
}
@end
