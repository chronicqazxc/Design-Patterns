//
//  MYLinkedList.m
//  Enumerators
//
//  Created by Wayne on 3/27/14.
//  Copyright (c) 2014 Wayne. All rights reserved.
//

#import "MYLinkedList.h"
#import "MYLinkedListEnumerator.h"

@implementation MYLinkedList
-(id)init{
    self = [super init];
    if(self != nil){
        _markerNode = [[MYLinkedListNode alloc]init];
        _markerNode.object = [NSNull null];
        _markerNode.nextNode = nil;
        _firstNode = _markerNode;
        _lastNode  = _markerNode;
        _listLength = 0;
    }
    return self;
}

-(void)appendObject:(id)newObject{
    MYLinkedListNode *newNode = [[MYLinkedListNode alloc]init];
    newNode.object = newObject;
    newNode.nextNode = _markerNode;
    if (_markerNode == _firstNode){
        _firstNode = newNode;
        _lastNode  = newNode;
    }else{
        /* 1._firstNode.nextNode and _lastNode.nextNode point to same address
         *   so when _lastNode.nextNode point to another address _firstNode.nextNode
         *   also point to the same address.
         * 2.This step make _lastNode point to the address whitch first.nextNode point
         *   , that will leads _firstNode.nextNode == _lastNode, so when entry the if
         *   scope next time, process 1.(_lastNode.nextNode = newNode) this is equal to
         *   _firstNode.nextObj.nextObj.nextObj and so on.
         *                                      Comment by Wayne Hsiao 2014/3/28
         */
        _lastNode.nextNode = newNode; // 1.
        _lastNode = newNode;          // 2.
    }
    _listLength++;
}

-(NSEnumerator *)objectEnumerator{
    MYLinkedListEnumerator *enumerator = [[MYLinkedListEnumerator alloc]initForList:self];
    return enumerator;
}
@end
