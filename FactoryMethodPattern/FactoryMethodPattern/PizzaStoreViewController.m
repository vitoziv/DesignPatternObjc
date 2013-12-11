//
//  PizzaStoreViewController.m
//  FactoryMethodPattern
//
//  Created by Vito on 12/11/13.
//  Copyright (c) 2013 Vito. All rights reserved.
//

#import "PizzaStoreViewController.h"
#import "PizzaTableViewController.h"
#import "NYPizzaStore.h"
#import "ChicagoPizzaStore.h"

@implementation PizzaStoreViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    PizzaTableViewController *viewController = segue.destinationViewController;
    if ([segue.identifier isEqualToString:@"NewYorkPizzaStore"]) {
        viewController.pizzas = @[@{@"name": @"Chesse", @"type": kPizzaTypeCheese},
                                  @{@"name": @"Clam", @"type": kPizzaTypeClam},
                                  @{@"name": @"Pepperoni", @"type": kPizzaTypePepperoni}];
        viewController.pizzaStore = [[NYPizzaStore alloc] init];
    } else if ([segue.identifier isEqualToString:@"ChicagoPizzaStore"]) {
        viewController.pizzas = @[@{@"name": @"Chesse", @"type": kPizzaTypeCheese},
                                  @{@"name": @"Clam", @"type": kPizzaTypeClam}];
        viewController.pizzaStore = [[ChicagoPizzaStore alloc] init];
    }
}

@end
