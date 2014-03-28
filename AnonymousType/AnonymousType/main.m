//
//  main.m
//  AnonymousType
//
//  Created by Wayne on 3/27/14.
//  Copyright (c) 2014 Wayne. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MYClass.h"
#import "MYClass2.h"
#import "MYProtocol.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        MYClass  *myClass = [[MYClass alloc]init];
        MYClass2 *myClass2= [[MYClass2 alloc]init];
        myClass.myProtocolObject = myClass2;
        [myClass.myProtocolObject myMethod];
        NSLog(@"%d",[myClass.myProtocolObject conformsToProtocol:@protocol(MYProtocol)]?YES:NO);
    }
    return 0;
}

