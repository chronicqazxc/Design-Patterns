//
//  MYLinkedListEnumerator.h
//  Enumerators
//
//  Created by Wayne on 3/27/14.
//  Copyright (c) 2014 Wayne. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MYLinkedList.h"

@interface MYLinkedListEnumerator : NSEnumerator
-(id)initForList:(MYLinkedList *)theList;
@property (readwrite, strong, nonatomic) MYLinkedList *list;
@property (readwrite, strong, nonatomic) MYLinkedListNode *currentNode;
@property (readonly) unsigned long originalListLength;
@end
