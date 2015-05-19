//
//  NSMutableArray+MutableArrayDeepCopyingSupport.m
//  CopyDemo
//
//  Created by Wayne on 5/19/15.
//  Copyright (c) 2015 Wayne. All rights reserved.
//

#import "NSMutableArray+MutableArrayDeepCopyingSupport.h"

@implementation NSMutableArray (MutableArrayDeepCopyingSupport)
- (id)deepCopy {
    return [NSKeyedUnarchiver unarchiveObjectWithData:[NSKeyedArchiver archivedDataWithRootObject:self]];
}
@end
