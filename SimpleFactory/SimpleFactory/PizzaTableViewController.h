//
//  PizzaTableViewController.h
//  FactoryPattern
//
//  Created by Vito on 12/10/13.
//  Copyright (c) 2013 Vito. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PizzaStore.h"

@interface PizzaTableViewController : UITableViewController

@property (strong, nonatomic) PizzaStore *pizzaStore;
@property (strong, nonatomic) NSArray *datas;

@end
