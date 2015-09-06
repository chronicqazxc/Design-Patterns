//
//  Factory.m
//  Factory
//
//  Created by Wayne Hsiao on 9/5/15.
//  Copyright (c) 2015 Wayne Hsiao. All rights reserved.
//

#import "Factory.h"
#import "Operator.h"

@implementation Factory
- (id)createOperator {
    Operator *operator = [[Operator alloc] init];
    return operator;
}
@end
