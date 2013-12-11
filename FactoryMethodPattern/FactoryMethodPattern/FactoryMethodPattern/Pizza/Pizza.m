//
//  Pizza.m
//  FactoryMethodPattern
//
//  Created by Vito on 12/11/13.
//  Copyright (c) 2013 Vito. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

- (void)prepare {
    NSLog(@"Preparing %@", self.name);
    NSLog(@"Tossing dough...");
    NSLog(@"Adding sauce...");
    NSLog(@"Adding toppings:");
    for (NSString *topping in self.toppings) {
        NSLog(@"   %@", topping);
    }
}

- (void)bake {
    NSLog(@"Bake for 25 minutes at 350");
}

- (void)cut {
    NSLog(@"Cutting the pizza into diagonal slices");
}

- (void)box {
    NSLog(@"Place pizza in official pizzaStore box");
}

@end
