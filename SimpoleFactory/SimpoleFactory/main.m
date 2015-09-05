//
//  main.m
//  SimpoleFactory
//
//  Created by Wayne Hsiao on 9/5/15.
//  Copyright (c) 2015 Wayne Hsiao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OperationFactory.h"
#import "Operation.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Operation *operation = [[[OperationFactory alloc] init] createOperationByClassString:@"OperationAdd"];
        operation.numberA = 1.;
        operation.numberB = 2.;
        double result = operation.result;
        NSLog(@"Result:%.2f", result);
    }
    return 0;
}
