//
//  MYStack.m
//  DynamicCreation
//
//  Created by Wayne on 3/26/14.
//  Copyright (c) 2014 Wayne. All rights reserved.
//

#import "MYStack.h"
@interface MYStack(){
    NSMutableArray *storage;
}
@end

@implementation MYStack

-(id)init{
    self = [super init];
    if(self){
        storage = [[NSMutableArray alloc]init];
    }
    return self;
}

-(void)push:(id)anObject{
    if(anObject){
        [storage addObject:anObject];
    }
}

-(id)pop{
    id value = nil;
    if([storage count] > 0){
        value = [storage lastObject];
        [storage removeObjectAtIndex:([storage count]-1)];
    }
    return value;
}

-(NSInteger)count{
    return [storage count];
}

-(id)peekAtIndex:(NSInteger)index{
    id value = nil;
    if(index < [self count]){
        value = [storage objectAtIndex:([storage count]-1)-index];
    }
    return value;
}
@end
