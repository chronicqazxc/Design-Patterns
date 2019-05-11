//
//  OperationMul.h
//  SimpoleFactory
//
//  Created by Wayne Hsiao on 9/5/15.
//  Copyright (c) 2015 Wayne Hsiao. All rights reserved.
//

#import "Operation.h"

@interface OperationMul: NSObject <Operation>
@property (nonatomic) NSInteger numberA;
@property (nonatomic) NSInteger numberB;
- (NSInteger)result;
@end
