//
//  MyObject.h
//  KVCTest
//
//  Created by Wayne on 4/10/14.
//  Copyright (c) 2014 Wayne. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyObject : NSObject

@property (weak, nonatomic) NSString *name;

- (NSString *)dailyFrom1To4:(int) num withSomeGuy:(NSString *)name;

@end
