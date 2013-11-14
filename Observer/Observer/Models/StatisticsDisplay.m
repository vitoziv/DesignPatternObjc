//
//  StatisticsDisplay.m
//  Observer
//
//  Created by Vito on 13-11-13.
//  Copyright (c) 2013年 Vito. All rights reserved.
//

#import "StatisticsDisplay.h"
#import "Subject.h"

@interface StatisticsDisplay ()

@property (nonatomic) CGFloat temperature;
@property (nonatomic) CGFloat humidity;
@property (nonatomic) CGFloat pressure;
@property (nonatomic, strong) id<Subject> subject;

@end

@implementation StatisticsDisplay

- (id)initWithSubject:(id<Subject>)subject
{
    self = [super init];
    if (self) {
        _subject = subject;
    }
    return self;
}

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
    NSLog(@"StatisticsDisplay temperature: %1.2fF, humidity: %f, pressure: %f", self.temperature, self.humidity, self.pressure);
}

@end
