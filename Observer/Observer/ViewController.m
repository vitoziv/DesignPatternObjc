//
//  ViewController.m
//  Observer
//
//  Created by Vito on 13-11-13.
//  Copyright (c) 2013年 Vito. All rights reserved.
//

#import "ViewController.h"
#import "WeatherData.h"
#import "CurrentConditions.h"
#import "StatisticsDisplay.h"
#import "ForecastDisplay.h"
#import "ThirdPartyDisplay.h"

@interface ViewController () {
    CurrentConditions *_currentConditions;
    StatisticsDisplay *_statisticsDisplay;
    ForecastDisplay *_forecastDisplay;
    ThirdPartyDisplay *_thirdPartyDisplay;
}

@property (nonatomic, strong) NSArray *observersClass;
@property (nonatomic, strong) WeatherData *weatherData;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _currentConditions = [[CurrentConditions alloc] init];
    _statisticsDisplay = [[StatisticsDisplay alloc] init];
    _forecastDisplay = [[ForecastDisplay alloc] init];
    _thirdPartyDisplay = [[ThirdPartyDisplay alloc] init];
    self.observersClass = @[_currentConditions,
                            _statisticsDisplay,
                            _forecastDisplay,
                            _thirdPartyDisplay];
    self.weatherData = [[WeatherData alloc] init];
}

- (IBAction)addObserverAction:(UIButton *)sender {
    id<Observer> observer = self.observersClass[sender.tag];
    if (sender.selected) {
        [self.weatherData removeObserver:observer];
    } else {
        [self.weatherData registerObserver:observer];
    }
    
    sender.selected = !sender.selected;
}

- (IBAction)dataChangedAction:(id)sender {
    [self.weatherData setMeasurementsWithTemperature:13
                                            humidity:67
                                            pressure:100];
}

@end
