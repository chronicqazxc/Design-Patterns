//
//  OperatorContext.h
//  Strategy
//
//  Created by Wayne Hsiao on 9/12/15.
//  Copyright (c) 2015 Wayne Hsiao. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Operator;

@interface OperatorContext : NSObject
- (id)initWithOperator:(Class)operatorClass;
- (void)showResult;
@end
