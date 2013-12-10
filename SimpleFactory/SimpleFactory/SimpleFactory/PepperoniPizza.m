//
//  PepperoniPizza.m
//  FactoryPattern
//
//  Created by Vito on 12/10/13.
//  Copyright (c) 2013 Vito. All rights reserved.
//

#import "PepperoniPizza.h"

@implementation PepperoniPizza

- (void)prepare {
    NSLog(@"prepare PepperoniPizza...");
}

- (void)bake {
    NSLog(@"bake PepperoniPizza...");
}

- (void)cut {
    NSLog(@"cut PepperoniPizza...");
}

- (void)box {
    NSLog(@"box PepperoniPizza...");
}

@end
