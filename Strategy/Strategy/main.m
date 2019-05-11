//
//  main.m
//  Strategy
//
//  Created by Wayne Hsiao on 9/12/15.
//  Copyright (c) 2015 Wayne Hsiao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Context.h"
#import "OperatorA.h"
#import "OperatorB.h"
#import "OperatorC.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Context *context = [[Context alloc] initWithStrategy:[OperatorC class]];
        [context execute];
        context = [[Context alloc] initWithStrategy:[OperatorA class]];
        [context execute];
        context = [[Context alloc] initWithStrategy:[OperatorB class]];
        [context execute];
    }
    return 0;
}
