//
//  Observer.h
//  Observer
//
//  Created by Vito on 13-11-13.
//  Copyright (c) 2013年 Vito. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Observer <NSObject>

- (void)updateWithTemp:(CGFloat)temp
              humidity:(CGFloat)humidity
              pressure:(CGFloat)pressure;

@end
