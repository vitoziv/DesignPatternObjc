//
//  SimplePizzaFactory.m
//  FactoryPattern
//
//  Created by Vito on 12/10/13.
//  Copyright (c) 2013 Vito. All rights reserved.
//

#import "SimplePizzaFactory.h"
#import "CheesePizza.h"
#import "PepperoniPizza.h"
#import "VeggiePizza.h"
#import "ClamPizza.h"

@implementation SimplePizzaFactory

- (Pizza *)creatPizza:(NSString *)type {
    Pizza *pizza = nil;
    
    if ([type isEqualToString:kPizzaTypeCheese]) {
        pizza = [[CheesePizza alloc] init];
    } else if ([type isEqualToString:kPizzaTypeClam]) {
        pizza = [[ClamPizza alloc] init];
    } else if ([type isEqualToString:kPizzaTypePepperoni]) {
        pizza = [[PepperoniPizza alloc] init];
    } else if ([type isEqualToString:kPizzaTypeVeggie]) {
        pizza = [[VeggiePizza alloc] init];
    }
    
    return pizza;
}

@end
