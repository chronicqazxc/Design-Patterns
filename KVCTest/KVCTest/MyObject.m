//
//  MyObject.m
//  KVCTest
//
//  Created by Wayne on 4/10/14.
//  Copyright (c) 2014 Wayne. All rights reserved.
//

#import "MyObject.h"

@implementation MyObject

- (NSString *)giveDay:(int) a{
    NSDictionary *dic = [[NSDictionary alloc] initWithObjects:@[@"morning",@"noon",@"evening",@"night"] forKeys:@[@1,@2,@3,@4]];
    
    NSString *moment = [dic objectForKey:[NSNumber numberWithInt:a]];
    
    return moment;
}

- (void)morning{
    NSLog(@"Good morning, %@",self.name);
}
- (void)noon{
    NSLog(@"%@ go wat launch.",self.name);
}
- (void)evening{
    NSLog(@"%@ go off work.", self.name);
}
- (void)night{
    NSLog(@"Nite, %@", self.name);
}
@end
