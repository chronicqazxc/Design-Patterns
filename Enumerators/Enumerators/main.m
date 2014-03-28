//
//  main.m
//  Enumerators
//
//  Created by Wayne on 3/27/14.
//  Copyright (c) 2014 Wayne. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MYLinkedList.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        MYLinkedList *linkedList = [[MYLinkedList alloc]init];
        [linkedList appendObject:@"one"];
        [linkedList appendObject:@1];
        [linkedList appendObject:@[@"Wang",@"Lee",@"J"]];
        
        NSLog(@"Length of Linked List: %ld",linkedList.listLength);
        
        
        id instance;
        NSEnumerator *enumerator = [linkedList objectEnumerator];
        while(instance = [enumerator nextObject]){
            NSLog(@"%@",instance);
        }
    }
    return 0;
}

