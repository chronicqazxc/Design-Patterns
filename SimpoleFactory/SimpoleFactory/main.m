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

@interface Operation (Test)

- (void)setupNumbersForTest;

@end

@implementation Operation (Test)

- (void)setupNumbersForTest {
    self.numberA = 1;
    self.numberB = 2;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Operation *operation = [[OperationFactory new] createOperationByClassString:@"OperationAdd"];
        [operation setupNumbersForTest];
        NSLog(@"Result of add:%ld", operation.result);
        
        operation = [[OperationFactory new] createOperationByClassString:@"OperationSub"];
        [operation setupNumbersForTest];
        NSLog(@"Result of subtract:%ld", operation.result);
        
        operation = [[OperationFactory new] createOperationByClassString:@"OperationMul"];
        [operation setupNumbersForTest];
        NSLog(@"Result of multiplication:%ld", operation.result);
        
        operation = [[OperationFactory new] createOperationByClassString:@"OperationDiv"];
        [operation setupNumbersForTest];
        NSLog(@"Result of division:%ld", operation.result);
    }
    return 0;
}
