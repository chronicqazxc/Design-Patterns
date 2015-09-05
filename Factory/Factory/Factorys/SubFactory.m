//
//  SubFactory.m
//  Factory
//
//  Created by Wayne Hsiao on 9/5/15.
//  Copyright (c) 2015 Wayne Hsiao. All rights reserved.
//

#import "SubFactory.h"
#import "OperatorSub.h"

@implementation SubFactory
- (id)createOperator {
    OperatorSub *operatorSub = [[OperatorSub alloc] init];
    return operatorSub;
}
@end
