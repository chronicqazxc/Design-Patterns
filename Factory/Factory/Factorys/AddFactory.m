//
//  AddFactory.m
//  Factory
//
//  Created by Wayne Hsiao on 9/5/15.
//  Copyright (c) 2015 Wayne Hsiao. All rights reserved.
//

#import "AddFactory.h"
#import "OperatorAdd.h"

@implementation AddFactory
- (id)createOperator {
    OperatorAdd *operatorAdd = [[OperatorAdd alloc] init];
    return operatorAdd;
}
@end
