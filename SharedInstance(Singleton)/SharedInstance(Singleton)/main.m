//
//  main.m
//  SharedInstance(Singleton)
//
//  Created by Wayne on 5/19/15.
//  Copyright (c) 2015 Wayne. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SharedObject.h"
#import "DescendantOfShareObj.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        SharedObject *sharedObj = [SharedObject sharedInstance];
        DescendantOfShareObj *sharedObj2 = [DescendantOfShareObj sharedInstance];
        NSLog(@"<%p>",sharedObj);
        NSLog(@"<%p>",sharedObj2);
        SharedObject *shareObj3 = [sharedObj copy];
        NSLog(@"<%p>",shareObj3);
    }
    return 0;
}
