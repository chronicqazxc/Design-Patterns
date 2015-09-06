//
//  ProductShop.h
//  AbstractFactory
//
//  Created by Wayne Hsiao on 9/6/15.
//  Copyright (c) 2015 Wayne Hsiao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Factory.h"

@interface ProductShop : NSObject
- (id)initWithFactory:(Factory *)factory;
- (void)assembleProduct;
@end
