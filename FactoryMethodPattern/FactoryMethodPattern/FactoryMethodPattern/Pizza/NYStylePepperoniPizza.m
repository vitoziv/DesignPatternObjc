//
//  NYStylePepperoniPizza.m
//  FactoryMethodPattern
//
//  Created by Vito on 12/11/13.
//  Copyright (c) 2013 Vito. All rights reserved.
//

#import "NYStylePepperoniPizza.h"

@implementation NYStylePepperoniPizza

- (id)init {
    self = [super init];
    if (!self) {
        return nil;
    }
    
    self.name = @"NY Style Pepperoni Pizza";
    self.dough = @"NY Pepperoni Dough";
    self.sauce = @"NY Pepperoni Sauce";
    
    self.toppings = @[@"Grated Reggiano Cheese"];
    return self;
}

@end
