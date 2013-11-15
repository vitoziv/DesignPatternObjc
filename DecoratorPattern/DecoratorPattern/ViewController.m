//
//  ViewController.m
//  DecoratorPattern
//
//  Created by Vito on 13-11-15.
//  Copyright (c) 2013年 Vito. All rights reserved.
//

#import "ViewController.h"
#import "Beverage.h"
#import "HouseBlend.h"
#import "DarkRoast.h"
#import "Espresso.h"
#import "Decaf.h"
#import "CondimentDecorator.h"
#import "Milk.h"
#import "Mocha.h"
#import "Soy.h"
#import "Whip.h"

@interface ViewController () {
    NSArray *beverages;
    NSArray *condiments;
}
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *coffeButtons;
@property (weak, nonatomic) IBOutlet UILabel *OrderListLabel;

@property (nonatomic, strong) Beverage *beverage;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    beverages = @[[[HouseBlend alloc] init],
                  [[DarkRoast alloc] init],
                  [[Espresso alloc] init],
                  [[Decaf alloc] init]];
    condiments = @[@"Mocha", @"Milk", @"Soy", @"Whip"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)chooseCoffeAction:(UIButton *)sender
{
    if (!sender.selected) {
        for (UIButton *button in self.coffeButtons) {
            button.selected = NO;
        }
        sender.selected = YES;
        
        self.beverage = beverages[sender.tag];
        self.OrderListLabel.text = self.beverage.description;
    }
}

- (IBAction)chooseCondimentAction:(UIButton *)sender
{
    self.Beverage = [(CondimentDecorator *)[NSClassFromString(condiments[sender.tag]) alloc] initWithBeverage:self.beverage];
    self.OrderListLabel.text = self.beverage.description;
}

- (IBAction)buyAction:(id)sender {
    NSLog(@"%@. $%f", self.beverage.description, [self.beverage cost]);
}

@end
