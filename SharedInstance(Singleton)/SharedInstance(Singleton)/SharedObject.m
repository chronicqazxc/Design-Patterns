//
//  SharedObject.m
//  SharedInstance(Singleton)
//
//  Created by Wayne on 5/19/15.
//  Copyright (c) 2015 Wayne. All rights reserved.
//

#import "SharedObject.h"

@implementation SharedObject
+ (id)sharedInstance {
    static SharedObject *sharedObject = nil;
    if (!sharedObject) {
        sharedObject = [[[self class] alloc] init];
    }
    return sharedObject;
}
@end
