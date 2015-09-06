//
//  ProductShop.m
//  AbstractFactory
//
//  Created by Wayne Hsiao on 9/6/15.
//  Copyright (c) 2015 Wayne Hsiao. All rights reserved.
//

#import "ProductShop.h"
#import "Product.h"

@interface ProductShop()
@property (nonatomic, strong) Factory *factory;
@end

@implementation ProductShop
- (id)initWithFactory:(Factory *)factory {
    self = [super init];
    if (self) {
        self.factory = factory;
    }
    return self;
}

- (void)assembleProduct {
    Product *product = [self.factory product];
    [product process];
}
@end
