//
//  PizzaTableViewController.h
//  FactoryMethodPattern
//
//  Created by Vito on 12/11/13.
//  Copyright (c) 2013 Vito. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PizzaStore.h"

@interface PizzaTableViewController : UITableViewController

@property (strong, nonatomic) NSArray *pizzas;
@property (strong, nonatomic) PizzaStore *pizzaStore;

@end
