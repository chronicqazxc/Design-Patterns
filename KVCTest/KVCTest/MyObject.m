//
//  MyObject.m
//  KVCTest
//
//  Created by Wayne on 4/10/14.
//  Copyright (c) 2014 Wayne. All rights reserved.
//

#import "MyObject.h"

@interface MyObject()

- (void)morning;
- (void)noon;
- (void)evening;
- (void)night;

@end

@implementation MyObject

- (NSString *)dailyFrom1To4:(int) num withSomeGuy:(NSString *)name{
    NSDictionary *dic = [[NSDictionary alloc] initWithObjects:@[@"morning",@"noon",@"evening",@"night"] forKeys:@[@1,@2,@3,@4]];
    
    NSString *moment = [dic objectForKey:[NSNumber numberWithInt:num]];
    self.name = name;
    return moment;
}

- (void)morning{
    NSLog(@"Good morning, %@",self.name);
}
- (void)noon{
    NSLog(@"%@ go eat launch.",self.name);
}
- (void)evening{
    NSLog(@"%@ go off work.", self.name);
}
- (void)night{
    NSLog(@"Nite, %@", self.name);
}
@end
