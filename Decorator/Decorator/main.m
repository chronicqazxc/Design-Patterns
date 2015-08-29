//
//  main.m
//  Decorator
//
//  Created by Wayne Hsiao on 8/29/15.
//  Copyright (c) 2015 Wayne Hsiao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Decorator.h"
#import "ConcreteDecoratorA.h"
#import "ConcreteDecoratorB.h"
#import "ConcreteDecoratorC.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *person = [[Person alloc] init];
        person.name = @"Jhon";
        
        ConcreteDecoratorA *decoratorA = [[ConcreteDecoratorA alloc] init];
        ConcreteDecoratorB *decoratorB = [[ConcreteDecoratorB alloc] init];
        ConcreteDecoratorC *decoratorC = [[ConcreteDecoratorC alloc] init];
        [decoratorA decoratePerson:person];
        [decoratorB decoratePerson:decoratorA];
        [decoratorC decoratePerson:decoratorB];
        [decoratorC show];
    }
    return 0;
}
