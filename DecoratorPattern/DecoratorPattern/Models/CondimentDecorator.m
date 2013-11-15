//
//  CondimentDecorator.m
//  DecoratorPattern
//
//  Created by Vito on 13-11-15.
//  Copyright (c) 2013年 Vito. All rights reserved.
//

#import "CondimentDecorator.h"

@implementation CondimentDecorator

- (id)initWithBeverage:(Beverage *)beverage {
    self = [super init];
    if (!self) {
        return nil;
    }
    
    _beverage = beverage;
    
    return self;
}

- (NSString *)description {
    return @"Unknown Condiment";
}

@end
