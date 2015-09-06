//
//  MulFactory.m
//  Factory
//
//  Created by Wayne Hsiao on 9/5/15.
//  Copyright (c) 2015 Wayne Hsiao. All rights reserved.
//

#import "MulFactory.h"
#import "OperatorMul.h"

@implementation MulFactory
- (id)createOperator {
    OperatorMul *operatorMul = [[OperatorMul alloc] init];
    return operatorMul;
}
@end
