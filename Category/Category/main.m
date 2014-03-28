//
//  main.m
//  Category
//
//  Created by Wayne on 3/26/14.
//  Copyright (c) 2014 Wayne. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MYSubclassNCategory.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        BOOL isContinue = 1;
        int input;
        MYDie *myDie = [[MYDie alloc]init];
        MYSubclass *mySubclass = [[MYSubclass alloc]init];
        while(isContinue){
            [myDie roll];
            [mySubclass roll];
            printf("myDie value=%i\n",[myDie value]);
            printf("mySubclass value=%i\n",[mySubclass value]);
            printf("continue?0:exit, 1:continue\n============================\n");
            scanf("%d",&input);
            isContinue = input;
        }
    }
    return 0;
}

