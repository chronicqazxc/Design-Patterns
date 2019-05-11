//
//  Context.h
//  Strategy
//
//  Created by Wayne Hsiao on 9/12/15.
//  Copyright (c) 2015 Wayne Hsiao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Context : NSObject
- (id)initWithStrategy:(Class)strategyClass;
- (void)execute;
@end
