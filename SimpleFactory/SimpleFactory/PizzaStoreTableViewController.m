//
//  PizzaStoreTableViewController.m
//  FactoryPattern
//
//  Created by Vito on 12/10/13.
//  Copyright (c) 2013 Vito. All rights reserved.
//

#import "PizzaStoreTableViewController.h"
#import "PizzaTableViewController.h"
#import "PizzaStore.h"
#import "NYPizzaFactory.h"
#import "ChicagoPizzaFactory.h"

@interface PizzaStoreTableViewController ()

@end

@implementation PizzaStoreTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    PizzaStore *store = nil;
    NSArray *datas = @[];
    
    if ([segue.identifier isEqualToString:@"NewYork Pizza Store"]) {
        store = [[PizzaStore alloc] initWithFactory:[[NYPizzaFactory alloc] init]];
        
        datas = @[@{@"name": @"Cheese Pizza", @"pizza": kPizzaTypeCheese},
                  @{@"name": @"Pepperoni Pizza", @"pizza": kPizzaTypePepperoni},
                  @{@"name": @"Vaggie Pizza", @"pizza": kPizzaTypeVeggie},
                  @{@"name": @"Clam Pizza", @"pizza": kPizzaTypeClam}];
    } else if ([segue.identifier isEqualToString:@"Chicago Pizza Store"]) {
        store = [[PizzaStore alloc] initWithFactory:[[ChicagoPizzaFactory alloc] init]];
        
        datas = @[@{@"name": @"Cheese Pizza", @"pizza": kPizzaTypeCheese},
                  @{@"name": @"Vaggie Pizza", @"pizza": kPizzaTypeVeggie}];
    }
    
    [(PizzaTableViewController *)segue.destinationViewController setPizzaStore:store];
    [(PizzaTableViewController *)segue.destinationViewController setDatas:datas];
}

@end
