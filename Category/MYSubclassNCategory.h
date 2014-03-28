//
//  MYCategory.h
//  Category
//
//  Created by Wayne on 3/27/14.
//  Copyright (c) 2014 Wayne. All rights reserved.
//

#import "MYDie.h"
@interface MYSubclass : MYDie
-(void)roll;
-(BOOL)isBoxcar;
@end
@interface MYDie (MYCategory)
-(void)roll;
-(BOOL)isBoxcar;
@end
