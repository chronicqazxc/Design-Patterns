//
//  SharedObject.h
//  SharedInstance(Singleton)
//
//  Created by Wayne on 5/19/15.
//  Copyright (c) 2015 Wayne. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SharedObject : NSObject <NSCopying, NSMutableCopying>
+ (id)sharedInstance;
@end
