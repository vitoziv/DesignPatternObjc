//
//  Soy.m
//  DecoratorPattern
//
//  Created by Vito on 13-11-15.
//  Copyright (c) 2013年 Vito. All rights reserved.
//

#import "Soy.h"

@implementation Soy

- (id)initWithBeverage:(Beverage *)beverage {
    self = [super init];
    if (!self) {
        return nil;
    }
    
    self.beverage = beverage;
    
    return self;
}

- (NSString *)description {
    return [self.beverage.description stringByAppendingString:@", Soy"];
}

- (CGFloat)cost {
    return .25 + [self.beverage cost];
}

@end
