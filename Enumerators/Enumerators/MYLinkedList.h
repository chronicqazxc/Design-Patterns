//
//  MYLinkedList.h
//  Enumerators
//
//  Created by Wayne on 3/27/14.
//  Copyright (c) 2014 Wayne. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MYLinkedListNode.h"

@interface MYLinkedList : NSObject

-(void)appendObject:(id)newObject;
-(NSEnumerator *)objectEnumerator;

@property (strong,readwrite) MYLinkedListNode *firstNode;
@property (strong,readwrite) MYLinkedListNode *lastNode;
@property (readonly)         MYLinkedListNode *markerNode; /* Tail of list */
@property (readonly) unsigned long listLength;

@end
