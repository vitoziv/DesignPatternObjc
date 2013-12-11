//
//  PizzaStore.m
//  FactoryMethodPattern
//
//  Created by Vito on 12/11/13.
//  Copyright (c) 2013 Vito. All rights reserved.
//

#import "PizzaStore.h"

@implementation PizzaStore

- (Pizza *)orderPizza:(NSString *)type {
    Pizza *pizza = [self createPizza:type];
    
    [pizza prepare];
    [pizza bake];
    [pizza cut];
    [pizza box];
    
    return pizza;
}

- (Pizza *)createPizza:(NSString *)type {
    return [[Pizza alloc] init];
}

@end
