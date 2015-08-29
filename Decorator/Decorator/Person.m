//
//  Person.m
//  Decorator
//
//  Created by Wayne Hsiao on 8/29/15.
//  Copyright (c) 2015 Wayne Hsiao. All rights reserved.
//

#import "Person.h"

@implementation Person
- (void)show {
    printf("%s ", [self.name UTF8String]);
}
@end
