//
//  Milk.m
//  DecoratorPattern
//
//  Created by Vito on 13-11-15.
//  Copyright (c) 2013年 Vito. All rights reserved.
//

#import "Milk.h"

@implementation Milk

- (id)initWithBeverage:(Beverage *)beverage {
    self = [super init];
    if (!self) {
        return nil;
    }
    
    self.beverage = beverage;
    
    return self;
}

- (NSString *)description {
    return [self.beverage.description stringByAppendingString:@", Milk"];
}

- (CGFloat)cost {
    return .30 + [self.beverage cost];
}

@end
