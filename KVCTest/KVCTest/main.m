//
//  main.m
//  KVCTest
//
//  Created by Wayne on 4/10/14.
//  Copyright (c) 2014 Wayne. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyObject.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        MyObject *obj = [[MyObject alloc] init];
        
        NSString *selector = [obj giveDay:1];
        
        [obj setValue:@"Wayne" forKey:@"name"];
        
        if([obj respondsToSelector:NSSelectorFromString(selector)])
            [obj valueForKey:selector];
        
        if([obj respondsToSelector:NSSelectorFromString(selector)])
            [obj performSelector:NSSelectorFromString(selector)];
        
        
    }
    return 0;
}

