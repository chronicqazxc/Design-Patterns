//
//  Decorator.h
//  Decorator
//
//  Created by Wayne Hsiao on 8/29/15.
//  Copyright (c) 2015 Wayne Hsiao. All rights reserved.
//

#import "Person.h"

@interface Decorator : Person
@property (nonatomic, strong) Person *person;
- (void)decoratePerson:(Person *)person;
@end
