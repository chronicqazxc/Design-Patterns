//
//  MYCategory.m
//  Category
//
//  Created by Wayne on 3/27/14.
//  Copyright (c) 2014 Wayne. All rights reserved.
//

#import "MYSubclassNCategory.h"

@implementation MYSubclass
-(void)roll{
    printf("subclass!\n");
    self.value = ((random() >> 5) % 6) + 1;
}

-(BOOL)isBoxcar{
    return (self.value == 6);
}

@end

@implementation MYDie (MYCategory)
-(void)roll{
    printf("category!\n");
    self.value = ((random() >> 5) % 6) + 1;
}

-(BOOL)isBoxcar{
    return (self.value == 6);
}
@end