//
//  ChicagoPizzaStore.m
//  FactoryMethodPattern
//
//  Created by Vito on 12/11/13.
//  Copyright (c) 2013 Vito. All rights reserved.
//

#import "ChicagoPizzaStore.h"
#import "ChicagoStyleCheesePizza.h"
#import "ChicagoStyleClamPizza.h"

@implementation ChicagoPizzaStore

- (Pizza *)createPizza:(NSString *)type {
    Pizza *pizza;
    
    if ([type isEqualToString:kPizzaTypeCheese]) {
        pizza = [[ChicagoStyleCheesePizza alloc] init];
    } else if ([type isEqualToString:kPizzaTypeClam]) {
        pizza = [[ChicagoStyleClamPizza alloc] init];
    }
    
    return pizza;
}


@end
