//
//  MyObj.h
//  CopyDemo
//
//  Created by Wayne on 5/19/15.
//  Copyright (c) 2015 Wayne. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyObj2.h"

@interface MyObj : NSObject <NSCopying, NSCoding>
@property (strong, nonatomic) NSString *name;
@property (copy, nonatomic) MyObj2 *myObj2;
@property (copy, nonatomic) NSArray *arr;
@property (copy, nonatomic) NSMutableArray *mArr;
@property (strong, nonatomic) NSMutableArray *strongMArr;
@end
