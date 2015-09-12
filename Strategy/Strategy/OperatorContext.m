//
//  OperatorContext.m
//  Strategy
//
//  Created by Wayne Hsiao on 9/12/15.
//  Copyright (c) 2015 Wayne Hsiao. All rights reserved.
//

#import "OperatorContext.h"
#import "Operator.h"

@interface OperatorContext()
@property (nonatomic, strong) Operator *operator;
@end

@implementation OperatorContext
- (id)initWithOperator:(Class)operatorClass {
    self = [super init];
    if (self) {
        self.operator = [[operatorClass alloc] init];
        NSAssert([self.operator respondsToSelector:@selector(showResult)], @"You enter wrong Operator class");
    }
    return self;
}

- (void)showResult {
    if ([self.operator respondsToSelector:@selector(showResult)]) {
        [self.operator showResult];
    }
}
@end
