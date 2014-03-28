//
//  MYClass.h
//  AnonymousType
//
//  Created by Wayne on 3/27/14.
//  Copyright (c) 2014 Wayne. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MYProtocol.h"

@interface MYClass : NSObject

@property (strong, nonatomic) id <MYProtocol> myProtocolObject;

@end
