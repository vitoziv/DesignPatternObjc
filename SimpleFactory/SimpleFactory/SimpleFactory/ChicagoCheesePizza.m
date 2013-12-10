//
//  ChicagoCheesePizza.m
//  FactoryPattern
//
//  Created by Vito on 12/10/13.
//  Copyright (c) 2013 Vito. All rights reserved.
//

#import "ChicagoCheesePizza.h"

@implementation ChicagoCheesePizza

- (void)prepare {
    NSLog(@"prepare Chicago CheesePizza...");
}

- (void)bake {
    NSLog(@"bake Chicago CheesePizza...");
}

- (void)cut {
    NSLog(@"cut Chicago CheesePizza...");
}

- (void)box {
    NSLog(@"box Chicago CheesePizza...");
}

@end
