//
//  ClamPizza.m
//  FactoryPattern
//
//  Created by Vito on 12/10/13.
//  Copyright (c) 2013 Vito. All rights reserved.
//

#import "ClamPizza.h"

@implementation ClamPizza

- (void)prepare {
    NSLog(@"prepare ClamPizza...");
}

- (void)bake {
    NSLog(@"bake ClamPizza...");
}

- (void)cut {
    NSLog(@"cut ClamPizza...");
}

- (void)box {
    NSLog(@"box ClamPizza...");
}

@end
