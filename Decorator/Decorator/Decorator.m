//
//  Decorator.m
//  Decorator
//
//  Created by Wayne Hsiao on 8/29/15.
//  Copyright (c) 2015 Wayne Hsiao. All rights reserved.
//

#import "Decorator.h"

@interface Decorator()

@end

@implementation Decorator
- (void)decoratePerson:(Person *)person {
    self.person = person;
}

- (void)show {
    if (self.person) {
        [self.person show];
    }
}
@end
