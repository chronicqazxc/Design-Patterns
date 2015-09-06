//
//  main.m
//  Factory
//
//  Created by Wayne Hsiao on 9/5/15.
//  Copyright (c) 2015 Wayne Hsiao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Factorys/Factory.h"
#import "Factorys/AddFactory.h"
#import "Factorys/SubFactory.h"
#import "Factorys/MulFactory.h"
#import "Factorys/DivFactory.h"
#import "Operators/Operator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Factory *factory = [[AddFactory alloc] init];
        Operator *operator = [factory createOperator];
        double result = [operator resultByNumberA:3. andNumberB:4.];
        NSLog(@"Result: %.2f", result);
    }
    return 0;
}
