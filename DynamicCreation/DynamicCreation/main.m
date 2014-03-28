//
//  main.m
//  DynamicCreation
//
//  Created by Wayne on 3/26/14.
//  Copyright (c) 2014 Wayne. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <stdio.h>
#import "MYStack.h"
#import "MYCommand.h"

static NSMutableDictionary *operators = nil;

#define MYMAXSTRING 8192

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        MYStack *stack = [[MYStack alloc]init];
        BOOL parsing = YES;
        char cString[MYMAXSTRING];
        
        /* Create path: When keyboard clicked every time,
         * it will all be replaced, as user enter a relative object
         */
        operators = [[NSMutableDictionary alloc]init];
        [operators setObject:@"add"      forKey:@"+"];
        [operators setObject:@"subtract" forKey:@"-"];
        [operators setObject:@"muliply"  forKey:@"*"];
        [operators setObject:@"divide"   forKey:@"/"];
        
        /* Prasing Loop:
         * parse one by one from stander input (stdin) */
        while(parsing){
            NSString *subString;
            /* Load one line from stander input, and wrape by space to multy-substring*/
            printf("please input number:");
            fgets(cString, MYMAXSTRING, stdin);
            NSString *inputLine = [NSString stringWithCString:cString encoding:NSUTF8StringEncoding];
            NSArray *splitLine  = [inputLine componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            /* Process those substring one by one from start to end */
            for(subString in splitLine){
                NSString *operator;
                NSString *commandName;
                Class commandClass;
                
                /* Skip if substring is ""*/
                if(NSOrderedSame == [subString compare:@""]){
                    continue;
                }
                
                /* If substring is equal to some operator,
                 * then make it to relate operator name */
                for(operator in operators){
                    if(NSOrderedSame == [operator compare:subString]){
                        subString = [operators objectForKey:operator];
                        break;
                    }
                }
                
                /* Find operator comply the string */
                commandName = [NSString stringWithFormat:@"MY%@Command", [subString capitalizedString]]; //(capitalizedStirng turn string to string to first character is uppercase)
                commandClass = NSClassFromString(commandName);
                
                /* If comply to operator name */
                if(commandClass){
                    /* Executed the operator */
                    MYCommandReturn result = [commandClass executeWithStack:stack];
                    switch(result){
                        case MYHaltException:
                            parsing = NO;
                            break;
                        case MYError:
                            NSLog(@"Error executing command \"%@\".", subString);
                            break;
                        case MYSuccess:
                        default:
                            break;
                    }
                }else{
                    [stack push:subString];
                }
            }
        }
    }
    return 0;
}

