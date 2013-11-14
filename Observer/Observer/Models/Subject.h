//
//  Subject.h
//  Observer
//
//  Created by Vito on 13-11-13.
//  Copyright (c) 2013年 Vito. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Observer.h"

@protocol Subject <NSObject>

@property (nonatomic, strong) NSMutableSet *observers;

- (void)registerObserver:(id<Observer>)observer;
- (void)removeObserver:(id<Observer>)observer;
- (void)notifyObservers;

@end
