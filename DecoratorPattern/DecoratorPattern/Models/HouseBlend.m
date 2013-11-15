//
//  HouseBlend.m
//  DecoratorPattern
//
//  Created by Vito on 13-11-15.
//  Copyright (c) 2013年 Vito. All rights reserved.
//

#import "HouseBlend.h"

@implementation HouseBlend

- (id)init {
    self = [super init];
    if (!self) {
        return nil;
    }
    
    self.description = @"HouseBlend";
    
    return self;
}

- (CGFloat)cost {
    return 0.5;
}

@end
