//
//  SharedObject.m
//  SharedInstance(Singleton)
//
//  Created by Wayne on 5/19/15.
//  Copyright (c) 2015 Wayne. All rights reserved.
//

#import "SharedObject.h"

@implementation SharedObject

static SharedObject *sharedObject = nil;

+ (id)sharedInstance {
    if (!sharedObject) {
        sharedObject = [[self hiddenAlloc] init];
    }
    return sharedObject;
}

+ (id)hiddenAlloc {
    return [super alloc];
}

- (id)init {
    self = [super init];
    if (self && ![[self class] sharedInstanceExists]) {
        
    }
    return self;
}

+ (BOOL)sharedInstanceExists {
    return (sharedObject != nil);
}

+ (id)alloc {
    NSLog(@"%@:use +sharedInstance instead of +alloc",[[self class] description]);
    return nil;
}

+ (id)new {
    return [self alloc];
}

+ (id)allocWithZone:(struct _NSZone *)zone {
    return [super allocWithZone:zone];
}

- (id)copyWithZone:(NSZone *)zone {
    return self;
}

- (id)mutableCopyWithZone:(NSZone *)zone {
    return [self copyWithZone:zone];
}
@end
