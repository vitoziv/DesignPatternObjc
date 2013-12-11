//
//  ChicagoStyleCheesePizza.m
//  FactoryMethodPattern
//
//  Created by Vito on 12/11/13.
//  Copyright (c) 2013 Vito. All rights reserved.
//

#import "ChicagoStyleCheesePizza.h"

@implementation ChicagoStyleCheesePizza

- (id)init {
    self = [super init];
    if (!self) {
        return nil;
    }
    
    self.name = @"Chicago Style Deep Dish Cheese Pizza";
    self.dough = @"Extra Thick Crust Dough";
    self.sauce = @"Plum Tomato Sauce";
    
    self.toppings = @[@"Shredded Mozzarella Cheese"];
    return self;
}

- (void)cut {
    NSLog(@"Cutting the pizza into square slice");
}

@end
