//
//  WeatherData.h
//  Observer
//
//  Created by Vito on 13-11-13.
//  Copyright (c) 2013年 Vito. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Subject.h"

@interface WeatherData : NSObject <Subject>

@property (nonatomic, strong) NSMutableSet *observers;

- (void)setMeasurementsWithTemperature:(CGFloat)temperature
                              humidity:(CGFloat)humidity
                              pressure:(CGFloat)pressure;

@end
