//
//  MYDie.m
//  Category
//
//  Created by Wayne on 3/26/14.
//  Copyright (c) 2014 Wayne. All rights reserved.
//

#import "MYDie.h"
@implementation MYDie
-(void)roll{
    _value = (random()%6)+1; /* Random nubmer between 1~6 */
}
-(int)value{
    return _value;
}


@end
