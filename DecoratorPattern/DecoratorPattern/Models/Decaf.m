//
//  Decaf.m
//  DecoratorPattern
//
//  Created by Vito on 13-11-15.
//  Copyright (c) 2013年 Vito. All rights reserved.
//

#import "Decaf.h"

@implementation Decaf

- (id)init {
    self = [super init];
    if (!self) {
        return nil;
    }
    
    self.description = @"Decaf";
    
    return self;
}

- (CGFloat)cost {
    return 0.67;
}

@end
