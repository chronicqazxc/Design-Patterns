//
//  OperationFactory.m
//  SimpoleFactory
//
//  Created by Wayne Hsiao on 9/5/15.
//  Copyright (c) 2015 Wayne Hsiao. All rights reserved.
//

#import "OperationFactory.h"
#import "Operation.h"

@implementation OperationFactory
+ (OperationType)createOperationByClassString:(NSString *)operationClassString {
    Class class = NSClassFromString(operationClassString);
    OperationType operation = [[class alloc] init];
    return operation;
}
@end
