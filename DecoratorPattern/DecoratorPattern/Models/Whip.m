//
//  Whip.m
//  DecoratorPattern
//
//  Created by Vito on 13-11-15.
//  Copyright (c) 2013年 Vito. All rights reserved.
//

#import "Whip.h"

@implementation Whip

- (id)initWithBeverage:(Beverage *)beverage {
    self = [super init];
    if (!self) {
        return nil;
    }
    
    self.beverage = beverage;
    
    return self;
}

- (NSString *)description {
    return [self.beverage.description stringByAppendingString:@", Whip"];
}

- (CGFloat)cost {
    return .15 + [self.beverage cost];
}

@end
