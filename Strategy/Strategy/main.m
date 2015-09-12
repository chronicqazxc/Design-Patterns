//
//  main.m
//  Strategy
//
//  Created by Wayne Hsiao on 9/12/15.
//  Copyright (c) 2015 Wayne Hsiao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OperatorContext.h"
#import "OperatorC.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        OperatorContext *operatorContext = [[OperatorContext alloc] initWithOperator:[OperatorC class]];
        [operatorContext showResult];
    }
    return 0;
}
