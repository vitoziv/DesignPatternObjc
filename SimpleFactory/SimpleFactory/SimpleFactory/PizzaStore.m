//
//  PizzaStore.m
//  FactoryPattern
//
//  Created by Vito on 12/10/13.
//  Copyright (c) 2013 Vito. All rights reserved.
//

#import "PizzaStore.h"

@interface PizzaStore ()

@property (strong, nonatomic) SimplePizzaFactory *factory;

@end

@implementation PizzaStore

- (id)initWithFactory:(SimplePizzaFactory *)factory {
    self = [super init];
    if (!self) {
        return nil;
    }
    
    _factory = factory;
    
    return self;
}

- (Pizza *)orderPizza:(NSString *)type {
    Pizza *pizza = nil;
    
    pizza = [self.factory creatPizza:type];
    
    [pizza prepare];
    [pizza bake];
    [pizza cut];
    [pizza box];
    
    return pizza;
}

@end
