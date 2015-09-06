//
//  ExpensiveProductFactory.m
//  AbstractFactory
//
//  Created by Wayne Hsiao on 9/6/15.
//  Copyright (c) 2015 Wayne Hsiao. All rights reserved.
//

#import "ExpensiveProductFactory.h"
#import "ExpensiveProduct.h"

@implementation ExpensiveProductFactory
- (Product *)product {
    Product *product = [[ExpensiveProduct alloc] init];
    return product;
}
@end
