//
//  ViewController.m
//  StrategyPattern
//
//  Created by Vito on 13-11-13.
//  Copyright (c) 2013年 Vito. All rights reserved.
//

#import "ViewController.h"
#import "Duck.h"
#import "MallardDuck.h"
#import "DecoyDuck.h"
#import "RedheadDuck.h"
#import "RubberDuck.h"
#import "FlyNoWay.h"
#import "FlyWithWings.h"
#import "Squeak.h"
#import "Quack.h"
#import "MuteQuack.h"

@interface ViewController () {
    NSArray *_flyBehaviorDatas;
    NSArray *_quackBehaviorDatas;
    NSArray *_duckDatas;
}

@property (weak, nonatomic) IBOutlet UILabel *duckLabel;
@property (weak, nonatomic) IBOutlet UILabel *flyBehaviorLabel;
@property (weak, nonatomic) IBOutlet UILabel *quackBehaviorLabel;



@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *flyButtons;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *quackButtons;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *duckButtons;

@property (strong, nonatomic) Duck *duck;
@property (strong, nonatomic) id<QuackBehavior> quackBehavior;
@property (strong, nonatomic) id<FlyBehavior> flyBehavior;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setupButtonsSelectedTitleColor:self.flyButtons];
    [self setupButtonsSelectedTitleColor:self.quackButtons];
    [self setupButtonsSelectedTitleColor:self.duckButtons];
    
    _flyBehaviorDatas = @[@"FlyNoWay", @"FlyWithWings"];
    _quackBehaviorDatas = @[@"Quack", @"Squeak", @"MuteQuack"];
    _duckDatas = @[@"DecoyDuck", @"RedheadDuck", @"MallardDuck", @"RubberDuck"];
    
    self.duck = [[Duck alloc] init];
}

- (IBAction)flyBehavior:(UIButton *)sender
{
    [self unselectedButtons:self.flyButtons];
    sender.selected = YES;
    
    NSString *className = _flyBehaviorDatas[sender.tag];
    self.flyBehavior = [[NSClassFromString(className) alloc] init];
    [self.duck setFlyBehavior:self.flyBehavior];
    
    [self.flyBehaviorLabel setText:className];
}

- (IBAction)quackBehavior:(UIButton *)sender
{
    [self unselectedButtons:self.quackButtons];
    sender.selected = YES;
    
    NSString *className = _quackBehaviorDatas[sender.tag];
    self.quackBehavior = [[NSClassFromString(className) alloc] init];
    [self.duck setQuackBehavior:self.quackBehavior];
    
    [self.quackBehaviorLabel setText:className];
}

- (IBAction)duck:(UIButton *)sender
{
    [self unselectedButtons:self.flyButtons];
    [self unselectedButtons:self.quackButtons];
    [self unselectedButtons:self.duckButtons];
    sender.selected = YES;
    
    NSString *className = _duckDatas[sender.tag];
    self.duck = [[NSClassFromString(className) alloc] init];
    [self.duckLabel setText:className];
}

- (IBAction)duckShow:(id)sender
{
    [self.duck swim];
    [self.duck display];
    [self.duck performQuack];
    [self.duck performFly];
}

- (void)setupButtonsSelectedTitleColor:(NSArray *)buttons {
    for (UIButton *button in buttons) {
        [button setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
        [button setTitleColor:[UIColor redColor] forState:UIControlStateSelected];
    }
}

- (void)unselectedButtons:(NSArray *)buttons {
    for (UIButton *button in buttons) {
        button.selected = NO;
    }
}

@end

