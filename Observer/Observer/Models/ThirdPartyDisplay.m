//
//  ThirdPartyDisplay.m
//  Observer
//
//  Created by Vito on 13-11-13.
//  Copyright (c) 2013年 Vito. All rights reserved.
//

#import "ThirdPartyDisplay.h"
#import "Subject.h"

@interface ThirdPartyDisplay ()

@property (nonatomic) CGFloat temperature;
@property (nonatomic) CGFloat humidity;
@property (nonatomic) CGFloat pressure;
@property (nonatomic, strong) id<Subject> subject;

@end

@implementation ThirdPartyDisplay

#pragma mark - Observer

- (void)updateWithTemp:(CGFloat)temp
              humidity:(CGFloat)humidity
              pressure:(CGFloat)pressure {
    self.temperature = temp;
    self.humidity = humidity;
    self.pressure = pressure;
    [self display];
}

#pragma mark - DisplayElement

- (void)display {
    NSLog(@"ThirdPartyDisplay weather temperature: %1.2fF, humidity: %f, pressure: %f", self.temperature, self.humidity, self.pressure);
}

@end
