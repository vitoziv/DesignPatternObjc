//
//  Pizza.h
//  FactoryPattern
//
//  Created by Vito on 12/10/13.
//  Copyright (c) 2013 Vito. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pizza : NSObject

- (void)prepare;
- (void)bake;
- (void)cut;
- (void)box;

@end
