//
//  WeatherData.m
//  Observer
//
//  Created by Vito on 13-11-13.
//  Copyright (c) 2013年 Vito. All rights reserved.
//

#import "WeatherData.h"

@interface WeatherData ()

@property (nonatomic) CGFloat temperature;
@property (nonatomic) CGFloat humidity;
@property (nonatomic) CGFloat pressure;

@end

@implementation WeatherData

- (void)registerObserver:(id<Observer>)observer {
    if (!self.observers) {
        self.observers = [[NSMutableSet alloc] init];
    }
    [self.observers addObject:observer];
}

- (void)removeObserver:(id<Observer>)observer {
    [self.observers removeObject:observer];
}

- (void)notifyObservers {
    for (id<Observer> observer in self.observers) {
        [observer updateWithTemp:self.temperature
                        humidity:self.humidity
                        pressure:self.pressure];
    }
}

- (void)measurementsChanged {
    [self notifyObservers];
}

- (void)setMeasurementsWithTemperature:(CGFloat)temperature humidity:(CGFloat)humidity pressure:(CGFloat)pressure {
    _temperature = temperature;
    _humidity = humidity;
    _pressure = pressure;
    [self measurementsChanged];
}

@end
