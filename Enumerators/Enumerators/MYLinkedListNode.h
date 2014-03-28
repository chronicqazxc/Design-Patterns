//
//  MYLinkedListNode.h
//  Enumerators
//
//  Created by Wayne on 3/27/14.
//  Copyright (c) 2014 Wayne. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MYLinkedListNode : NSObject
@property (readwrite, strong) id object;
@property (readwrite, strong) MYLinkedListNode *nextNode;
@end
