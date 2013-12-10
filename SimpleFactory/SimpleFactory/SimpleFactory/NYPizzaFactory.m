//
//  NYPizzaFactory.m
//  FactoryPattern
//
//  Created by Vito on 12/10/13.
//  Copyright (c) 2013 Vito. All rights reserved.
//

#import "NYPizzaFactory.h"
#import "NYCheesePizza.h"
#import "NYClamPizza.h"
#import "NYPepperoniPizza.h"
#import "NYVeggiePizza.h"

@implementation NYPizzaFactory

- (Pizza *)creatPizza:(NSString *)type {
    Pizza *pizza = nil;
    
    if ([type isEqualToString:kPizzaTypeCheese]) {
        pizza = [[NYCheesePizza alloc] init];
    } else if ([type isEqualToString:kPizzaTypeClam]) {
        pizza = [[NYClamPizza alloc] init];
    } else if ([type isEqualToString:kPizzaTypePepperoni]) {
        pizza = [[NYPepperoniPizza alloc] init];
    } else if ([type isEqualToString:kPizzaTypeVeggie]) {
        pizza = [[NYVeggiePizza alloc] init];
    }
    
    return pizza;
}

@end
