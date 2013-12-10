//
//  PizzaStore.h
//  FactoryPattern
//
//  Created by Vito on 12/10/13.
//  Copyright (c) 2013 Vito. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "SimplePizzaFactory.h"

@interface PizzaStore : NSObject

- (id)initWithFactory:(SimplePizzaFactory *)factory;

- (Pizza *)orderPizza:(NSString *)pizza;

@end
