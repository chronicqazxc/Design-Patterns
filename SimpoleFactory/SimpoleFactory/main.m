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

void setupNumbersForTest(OperationType operation) {
    operation.numberA = 1;
    operation.numberB = 2;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        OperationType operation = [OperationFactory createOperationByClassString:@"OperationAdd"];
        setupNumbersForTest(operation);
        NSLog(@"Result of add:%ld", operation.result);
        
        operation = [OperationFactory createOperationByClassString:@"OperationSub"];
        setupNumbersForTest(operation);
        NSLog(@"Result of subtract:%ld", operation.result);
        
        operation = [OperationFactory createOperationByClassString:@"OperationMul"];
        setupNumbersForTest(operation);
        NSLog(@"Result of multiplication:%ld", operation.result);
        
        operation = [OperationFactory createOperationByClassString:@"OperationDiv"];
        setupNumbersForTest(operation);
        NSLog(@"Result of division:%ld", operation.result);
    }
    return 0;
}
