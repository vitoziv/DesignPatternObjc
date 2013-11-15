//
//  Beverage.h
//  DecoratorPattern
//
//  Created by Vito on 13-11-16.
//  Copyright (c) 2013年 Vito. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Beverage : NSObject

@property (nonatomic, strong) NSString *description;

- (CGFloat)cost;

@end
