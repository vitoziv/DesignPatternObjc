//
//  Duck.m
//  StragetyPatternObjc
//
//  Created by Vito on 13-11-12.
//  Copyright (c) 2013年 Vito. All rights reserved.
//

#import "Duck.h"

@implementation Duck

- (void)swim {
    NSLog(@"Swimming!");
}

- (void)display {
    NSLog(@"I'm a super Duck!");
}

- (void)performQuack {
    [self.quackBehavior quack];
}

- (void)performFly {
    [self.flyBehavior fly];
}

@end
