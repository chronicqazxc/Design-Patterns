//
//  MYStack.h
//  DynamicCreation
//
//  Created by Wayne on 3/26/14.
//  Copyright (c) 2014 Wayne. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MYStack : NSObject
- (void)push:(id)anObject;
- (id)pop;
- (NSInteger)count;
- (id)peekAtIndex: (NSInteger)index;
@end
