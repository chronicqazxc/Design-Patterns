//
//  DivFactory.m
//  Factory
//
//  Created by Wayne Hsiao on 9/5/15.
//  Copyright (c) 2015 Wayne Hsiao. All rights reserved.
//

#import "DivFactory.h"
#import "OperatorDiv.h"

@implementation DivFactory
- (id)createOperator {
    OperatorDiv *operatorDiv = [[OperatorDiv alloc] init];
    return operatorDiv;
}
@end
