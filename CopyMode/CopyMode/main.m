//
//  main.m
//  CopyMode
//
//  Created by Wayne on 5/19/15.
//  Copyright (c) 2015 Wayne. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyObj.h"
#import "NSMutableArray+MutableArrayDeepCopyingSupport.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        MyObj *myObj = [[MyObj alloc] init];
        myObj.name = @"Halo";
#pragma mark Copy NSArray
        NSArray *originArray = @[myObj];
        NSArray *copiedArray = [originArray copy];
        NSMutableArray *mutableCopiedArray = [originArray mutableCopy];
        NSLog(@"\n-----------------");
        NSLog(@"originArray\t\t\t<%p>\n%@",originArray, originArray);
        NSLog(@"copyiedArray\t\t<%p>\n%@",copiedArray, copiedArray);
        NSLog(@"mutableCopiedArray\t<%p>\n%@\n-----------------",mutableCopiedArray, mutableCopiedArray);
        
#pragma mark Copy MyObj
        MyObj *myObj2 = [myObj copy];
        NSLog(@"myObj\t<%p>\n",myObj);
        NSLog(@"myObj2\t<%p>\n-----------------",myObj2);
        
#pragma mark DeepCopy NSMutableArray
        NSMutableArray *originMArray = [NSMutableArray arrayWithObject:myObj];
        NSArray *copiedMArray = [originMArray copy];
        NSMutableArray *mutableCopiedMArray = [originMArray mutableCopy];
        NSMutableArray *deepCopiedMArray = [originMArray deepCopy];
        NSLog(@"originMArray\t\t\t<%p>\n%@",originMArray, originMArray);
        NSLog(@"copiedMArray\t\t\t<%p>\n%@",copiedMArray, copiedMArray);
        NSLog(@"mutableCopiedMArray\t\t<%p>\n%@",mutableCopiedMArray, mutableCopiedMArray);
        NSLog(@"deepCopiedMArray\t\t<%p>\n%@\n-----------------",deepCopiedMArray, deepCopiedMArray);
    }
    return 0;
}
