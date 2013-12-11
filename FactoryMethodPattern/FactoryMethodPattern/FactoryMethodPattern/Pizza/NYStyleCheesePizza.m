//
//  NYStyleCheesePizza.m
//  FactoryMethodPattern
//
//  Created by Vito on 12/11/13.
//  Copyright (c) 2013 Vito. All rights reserved.
//

#import "NYStyleCheesePizza.h"

@implementation NYStyleCheesePizza

- (id)init {
    self = [super init];
    if (!self) {
        return nil;
    }
    
    self.name = @"NY Style Sauce and Cheese Pizza";
    self.dough = @"Thin Crust Dough";
    self.sauce = @"Marinara Sauce";
    
    self.toppings = @[@"Grated Reggiano Cheese"];
    return self;
}

@end
