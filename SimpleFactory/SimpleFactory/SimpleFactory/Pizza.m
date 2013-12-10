//
//  Pizza.m
//  FactoryPattern
//
//  Created by Vito on 12/10/13.
//  Copyright (c) 2013 Vito. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

- (void)prepare {
    NSLog(@"prepare Pizza...");
}

- (void)bake {
    NSLog(@"bake Pizza...");
}

- (void)cut {
    NSLog(@"cut Pizza...");
}

- (void)box {
    NSLog(@"box Pizza...");
}

@end
