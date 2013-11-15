//
//  DarkRoast.m
//  DecoratorPattern
//
//  Created by Vito on 13-11-15.
//  Copyright (c) 2013年 Vito. All rights reserved.
//

#import "DarkRoast.h"

@implementation DarkRoast

- (id)init {
    self = [super init];
    if (!self) {
        return nil;
    }
    
    self.description = @"DarkRoast";
    
    return self;
}

- (CGFloat)cost {
    return 1.2;
}

@end
