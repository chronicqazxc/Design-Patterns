//
//  MyObj.h
//  CopyDemo
//
//  Created by Wayne on 5/19/15.
//  Copyright (c) 2015 Wayne. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyObj : NSObject <NSCopying, NSCoding>
@property (strong, nonatomic) NSString *name;
@end
