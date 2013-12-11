//
//  NYPizzaStore.m
//  FactoryMethodPattern
//
//  Created by Vito on 12/11/13.
//  Copyright (c) 2013 Vito. All rights reserved.
//

#import "NYPizzaStore.h"
#import "NYStyleCheesePizza.h"
#import "NYStylePepperoniPizza.h"
#import "NYStyleClamPizza.h"

@implementation NYPizzaStore

- (Pizza *)createPizza:(NSString *)type {
    Pizza *pizza;
    
    if ([type isEqualToString:kPizzaTypeCheese]) {
        pizza = [[NYStyleCheesePizza alloc] init];
    } else if ([type isEqualToString:kPizzaTypePepperoni]) {
        pizza = [[NYStylePepperoniPizza alloc] init];
    } else if ([type isEqualToString:kPizzaTypeClam]) {
        pizza = [[NYStyleClamPizza alloc] init];
    }
    
    return pizza;
}

@end
