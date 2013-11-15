//
//  Espresso.m
//  DecoratorPattern
//
//  Created by Vito on 13-11-15.
//  Copyright (c) 2013年 Vito. All rights reserved.
//

#import "Espresso.h"

@implementation Espresso

- (id)init {
    self = [super init];
    if (!self) {
        return nil;
    }
    
    self.description = @"Espresso";
    
    return self;
}

- (CGFloat)cost {
    return 0.8;
}

@end
