//
//  ChicagoPizzaFactory.m
//  FactoryPattern
//
//  Created by Vito on 12/10/13.
//  Copyright (c) 2013 Vito. All rights reserved.
//

#import "ChicagoPizzaFactory.h"
#import "ChicagoCheesePizza.h"
#import "ChicagoVeggiePizza.h"

@implementation ChicagoPizzaFactory

- (Pizza *)creatPizza:(NSString *)type {
    Pizza *pizza = nil;
    
    if ([type isEqualToString:kPizzaTypeCheese]) {
        pizza = [[ChicagoCheesePizza alloc] init];
    } else if ([type isEqualToString:kPizzaTypeVeggie]) {
        pizza = [[ChicagoVeggiePizza alloc] init];
    }
    
    return pizza;
}

@end
