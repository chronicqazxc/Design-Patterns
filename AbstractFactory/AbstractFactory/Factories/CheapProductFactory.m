//
//  CheapProductFactory.m
//  AbstractFactory
//
//  Created by Wayne Hsiao on 9/6/15.
//  Copyright (c) 2015 Wayne Hsiao. All rights reserved.
//

#import "CheapProductFactory.h"
#import "CheapProduct.h"

@implementation CheapProductFactory
- (Product *)product {
    Product *product = [[CheapProduct alloc] init];
    return product;
}
@end
