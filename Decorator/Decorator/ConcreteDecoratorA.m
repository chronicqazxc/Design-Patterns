//
//  ConcreteDecoratorA.m
//  Decorator
//
//  Created by Wayne Hsiao on 8/29/15.
//  Copyright (c) 2015 Wayne Hsiao. All rights reserved.
//

#import "ConcreteDecoratorA.h"

@interface ConcreteDecoratorA()

@end

@implementation ConcreteDecoratorA
- (void)show {
    printf("Decorate A ");
    [super show];
}
@end
