//
//  main.m
//  Selector
//
//  Created by Wayne on 3/31/14.
//  Copyright (c) 2014 Wayne. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MYSelector.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        MYSelector *mySelector = [[MYSelector alloc]init];
        [mySelector performSelector:@selector(delay) withObject:nil afterDelay:10.0];
        [mySelector performSelector:@selector(hello)];
    }
    return 0;
}

