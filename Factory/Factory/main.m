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
#import "Operator/Operator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Factory *factory = [[MulFactory alloc] init];
        Operator *operator = [factory createOperator];
        operator.numberA = 3.;
        operator.numberB = 4.;
        double result = operator.result;
        NSLog(@"Result: %.2f", result);
    }
    return 0;
}
