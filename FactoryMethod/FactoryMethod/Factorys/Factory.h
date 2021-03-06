//
//  Factory.h
//  Factory
//
//  Created by Wayne Hsiao on 9/5/15.
//  Copyright (c) 2015 Wayne Hsiao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Factory : NSObject
/**
 *  Template method
 *
 *  @return Concrete operator
 */
- (id)createOperator;
@end
