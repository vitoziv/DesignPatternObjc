//
//  ChicagoStyleClamPizza.m
//  FactoryMethodPattern
//
//  Created by Vito on 12/11/13.
//  Copyright (c) 2013 Vito. All rights reserved.
//

#import "ChicagoStyleClamPizza.h"

@implementation ChicagoStyleClamPizza

- (id)init {
    self = [super init];
    if (!self) {
        return nil;
    }
    
    self.name = @"Chicago Style Clam Pizza";
    self.dough = @"Chicago Clam Dough";
    self.sauce = @"Chicago Clam Sauce";
    
    self.toppings = @[@"Shredded Mozzarella Cheese"];
    return self;
}

@end
