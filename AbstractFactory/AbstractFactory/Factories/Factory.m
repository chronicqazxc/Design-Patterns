//
//  Factory.m
//  AbstractFactory
//
//  Created by Wayne Hsiao on 9/6/15.
//  Copyright (c) 2015 Wayne Hsiao. All rights reserved.
//

#import "Factory.h"
#import "Product.h"

@implementation Factory
- (Product *)product {
    Product *product = [[Product alloc] init];
    return product;
}
@end
