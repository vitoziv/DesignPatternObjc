//
//  CurrentConditions.m
//  Observer
//
//  Created by Vito on 13-11-13.
//  Copyright (c) 2013年 Vito. All rights reserved.
//

#import "CurrentConditions.h"
#import "Subject.h"

@interface CurrentConditions ()

@property (nonatomic) CGFloat temperature;
@property (nonatomic) CGFloat humidity;
@property (nonatomic, strong) id<Subject> subject;

@end

@implementation CurrentConditions

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
    [self display];
}

#pragma mark - DisplayElement

- (void)display {
    NSLog(@"Current conditions: %fF degree and %f humidity", self.temperature, self.humidity);
}

@end
