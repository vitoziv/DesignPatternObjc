//
//  Pizza.h
//  FactoryMethodPattern
//
//  Created by Vito on 12/11/13.
//  Copyright (c) 2013 Vito. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pizza : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *dough;
@property (strong, nonatomic) NSString *sauce;

@property (strong, nonatomic) NSArray *toppings;

- (void)prepare;
- (void)bake;
- (void)cut;
- (void)box;

@end
