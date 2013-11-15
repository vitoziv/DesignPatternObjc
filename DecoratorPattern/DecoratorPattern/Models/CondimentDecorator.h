//
//  CondimentDecorator.h
//  DecoratorPattern
//
//  Created by Vito on 13-11-15.
//  Copyright (c) 2013年 Vito. All rights reserved.
//

#import "Beverage.h"

@interface CondimentDecorator : Beverage

@property (nonatomic, strong) Beverage *beverage;

- (id)initWithBeverage:(Beverage *)beverage;
- (NSString *)description;

@end
