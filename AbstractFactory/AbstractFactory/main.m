//
//  main.m
//  AbstractFactory
//
//  Created by Wayne Hsiao on 9/6/15.
//  Copyright (c) 2015 Wayne Hsiao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ProductShop.h"
#import "Factory.h"
#import "ExpensiveProductFactory.h"
#import "CheapProductFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Factory *factory = [[ExpensiveProductFactory alloc] init];
        ProductShop *productShop = [[ProductShop alloc] initWithFactory:factory];
        [productShop assembleProduct];
    }
    return 0;
}
