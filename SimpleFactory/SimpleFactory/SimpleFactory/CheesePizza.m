//
//  CheesePizza.m
//  FactoryPattern
//
//  Created by Vito on 12/10/13.
//  Copyright (c) 2013 Vito. All rights reserved.
//

#import "CheesePizza.h"

@implementation CheesePizza

- (void)prepare {
    NSLog(@"prepare CheesePizza...");
}

- (void)bake {
    NSLog(@"bake CheesePizza...");
}

- (void)cut {
    NSLog(@"cut CheesePizza...");
}

- (void)box {
    NSLog(@"box CheesePizza...");
}


@end
