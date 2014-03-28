//
//  MYLinkedListEnumerator.m
//  Enumerators
//
//  Created by Wayne on 3/27/14.
//  Copyright (c) 2014 Wayne. All rights reserved.
//

#import "MYLinkedListEnumerator.h"
@implementation MYLinkedListEnumerator
-(id)initForList:(MYLinkedList *)theList{
    self = [super init];
    if(self){
        _list = theList;
        _currentNode = theList.firstNode;
        _originalListLength = theList.listLength;
    }
    return self;
}

-(id)nextObject{
    id object = nil;
    MYLinkedListNode *nextNode = _currentNode.nextNode;
    if(_list.listLength != _originalListLength){
        NSException *exception = [NSException exceptionWithName:@"MYLinkedListMutationException" reason:@"MYLinkedList was mutated during an enumeration" userInfo:nil];
        @throw exception;
    }
    if (_currentNode != _list.markerNode){
        object = _currentNode.object;
        _currentNode = nextNode;
    }
    return object;
}

-(NSArray *)allObjects{
    NSMutableArray *array = [NSMutableArray arrayWithCapacity:_originalListLength];
    id object;
    while((object = [self nextObject])){
        [array addObject:object];
    }
    return array;
}
@end
