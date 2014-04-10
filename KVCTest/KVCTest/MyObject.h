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

- (void)morning;
- (void)noon;
- (void)evening;
- (void)night;

- (NSString *)giveDay:(int) a;

@end
