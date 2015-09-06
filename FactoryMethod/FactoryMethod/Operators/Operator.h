//
//  Operator.h
//  Factory
//
//  Created by Wayne Hsiao on 9/5/15.
//  Copyright (c) 2015 Wayne Hsiao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Operator : NSObject
- (double)resultByNumberA:(double)numberA andNumberB:(double)numberb;
@property (nonatomic) double numberA;
@property (nonatomic) double numberB;
- (double)result;
@end
