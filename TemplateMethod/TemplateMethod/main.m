//
//  main.m
//  TemplateMethod
//
//  Created by Wayne Hsiao on 9/10/15.
//  Copyright (c) 2015 Wayne Hsiao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Salary.h"
#import "ManagerSalary.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Salary *employeeSalary = [[ManagerSalary alloc] init];
        NSInteger monthlySalary = [employeeSalary salary];
        NSLog(@"Monthly salary of manager: %ld", (long)monthlySalary);
    }
    return 0;
}
