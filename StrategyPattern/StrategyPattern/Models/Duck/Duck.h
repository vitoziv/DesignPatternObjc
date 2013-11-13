//
//  Duck.h
//  StragetyPatternObjc
//
//  Created by Vito on 13-11-12.
//  Copyright (c) 2013年 Vito. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FlyBehavior.h"
#import "QuackBehavior.h"

@interface Duck : NSObject

@property (nonatomic, weak) id<FlyBehavior> flyBehavior;
@property (nonatomic, weak) id<QuackBehavior> quackBehavior;

- (void)swim;
- (void)display;
- (void)performQuack;
- (void)performFly;

@end
