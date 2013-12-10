//
//  VeggiePizza.m
//  FactoryPattern
//
//  Created by Vito on 12/10/13.
//  Copyright (c) 2013 Vito. All rights reserved.
//

#import "VeggiePizza.h"

@implementation VeggiePizza

- (void)prepare {
    NSLog(@"prepare VeggiePizza...");
}

- (void)bake {
    NSLog(@"bake VeggiePizza...");
}

- (void)cut {
    NSLog(@"cut VeggiePizza...");
}

- (void)box {
    NSLog(@"box VeggiePizza...");
}

@end
