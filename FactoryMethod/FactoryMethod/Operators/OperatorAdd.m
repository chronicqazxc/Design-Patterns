//
//  OperatorAdd.m
//  Factory
//
//  Created by Wayne Hsiao on 9/5/15.
//  Copyright (c) 2015 Wayne Hsiao. All rights reserved.
//

#import "OperatorAdd.h"

@implementation OperatorAdd
- (double)result {
    double result = self.numberA + self.numberB;
    return result;
}
@end
