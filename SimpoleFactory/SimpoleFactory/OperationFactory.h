//
//  OperationFactory.h
//  SimpoleFactory
//
//  Created by Wayne Hsiao on 9/5/15.
//  Copyright (c) 2015 Wayne Hsiao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OperationFactory : NSObject
- (id)createOperationByClassString:(NSString *)operationClassString;
@end
