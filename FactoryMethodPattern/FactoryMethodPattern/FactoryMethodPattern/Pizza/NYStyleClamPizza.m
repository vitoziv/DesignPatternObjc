//
//  NYStyleClamPizza.m
//  FactoryMethodPattern
//
//  Created by Vito on 12/11/13.
//  Copyright (c) 2013 Vito. All rights reserved.
//

#import "NYStyleClamPizza.h"

@implementation NYStyleClamPizza

- (id)init {
    self = [super init];
    if (!self) {
        return nil;
    }
    
    self.name = @"NY Style Clam Pizza";
    self.dough = @"NY Clam Dough";
    self.sauce = @"NY Clam Sauce";
    
    self.toppings = @[@"Shredded Mozzarella Cheese"];
    return self;
}

@end
