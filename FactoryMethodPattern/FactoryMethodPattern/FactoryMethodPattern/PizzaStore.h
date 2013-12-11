//
//  PizzaStore.h
//  FactoryMethodPattern
//
//  Created by Vito on 12/11/13.
//  Copyright (c) 2013 Vito. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"

static NSString *const kPizzaTypeCheese = @"kPizzaTypeCheese";
static NSString *const kPizzaTypePepperoni = @"kPizzaTypePepperoni";
static NSString *const kPizzaTypeClam = @"kPizzaTypeClam";
static NSString *const kPizzaTypeVeggie = @"kPizzaTypeVeggie";

@interface PizzaStore : NSObject

- (Pizza *)orderPizza:(NSString *)type;

@end
