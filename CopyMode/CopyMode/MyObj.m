//
//  MyObj.m
//  CopyDemo
//
//  Created by Wayne on 5/19/15.
//  Copyright (c) 2015 Wayne. All rights reserved.
//

#import "MyObj.h"

#define kMyObjNameKey @"MyObjNameKey"

@implementation MyObj
- (id)copyWithZone:(NSZone *)zone {
//    MyObj *result = [[[self class] allocWithZone:zone] init];
//    result.name = self.name;
//    return result;
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.name forKey:kMyObjNameKey];
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    if (self) {
        self.name = [aDecoder decodeObjectForKey:kMyObjNameKey];
    }
    return self;
}
@end
