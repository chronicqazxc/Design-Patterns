//
//  Salary.m
//  TemplateMethod
//
//  Created by Wayne Hsiao on 9/10/15.
//  Copyright (c) 2015 Wayne Hsiao. All rights reserved.
//

#import "Salary.h"

@implementation Salary
- (NSInteger)salary {
    return [self baseSalary] + [self bonus];
}
- (NSInteger)baseSalary {
    return 0;
}
- (NSInteger)bonus {
    return 0;
}
@end
