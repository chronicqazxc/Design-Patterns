//
//  OperatorContext.m
//  Strategy
//
//  Created by Wayne Hsiao on 9/12/15.
//  Copyright (c) 2015 Wayne Hsiao. All rights reserved.
//

#import "Context.h"
#import "Strategy.h"

@interface Context()
@property (nonatomic, strong) id <Strategy> strategy;
@end

@implementation Context
- (id)initWithStrategy:(Class)strategyClass {
    self = [super init];
    if (self) {
        self.strategy = [[strategyClass alloc] init];
        NSAssert([self.strategy respondsToSelector:@selector(showResult)], @"You enter wrong Operator class");
    }
    return self;
}

- (void)execute {
    [self.strategy process];
    [self.strategy showResult];
}
@end
