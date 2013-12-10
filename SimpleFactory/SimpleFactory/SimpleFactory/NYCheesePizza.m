//
//  NYCheesePizza.m
//  FactoryPattern
//
//  Created by Vito on 12/10/13.
//  Copyright (c) 2013 Vito. All rights reserved.
//

#import "NYCheesePizza.h"

@implementation NYCheesePizza

- (void)prepare {
    NSLog(@"prepare NewYork CheesePizza...");
}

- (void)bake {
    NSLog(@"bake NewYork CheesePizza...");
}

- (void)cut {
    NSLog(@"cut NewYork CheesePizza...");
}

- (void)box {
    NSLog(@"box NewYork CheesePizza...");
}

@end
