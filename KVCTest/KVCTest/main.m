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
        int dailyMoment;
        char charName[20];
        NSString *name;
        
        printf("Hello, what's your name?\n");
        scanf("%s",&charName[0]);
        
        printf("Enter a moment between 1 to 4.\n");
        scanf("%d",&dailyMoment);
        
        name = [NSString stringWithFormat:@"%s",charName];
        NSString *selector = [obj dailyFrom1To4:dailyMoment withName:name];
        
        if([obj respondsToSelector:NSSelectorFromString(selector)])
            [obj valueForKey:selector];
        
    }
    return 0;
}

