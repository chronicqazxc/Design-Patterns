//
//  OperatorSub.m
//  Factory
//
//  Created by Wayne Hsiao on 9/5/15.
//  Copyright (c) 2015 Wayne Hsiao. All rights reserved.
//

#import "OperatorSub.h"

@implementation OperatorSub
- (double)result {
    double result = 0;
    result = self.numberA - self.numberB;
    return result;
}
@end
