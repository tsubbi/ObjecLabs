//
//  DeliveryCar.h
//  PizzaRestaurant
//
//  Created by Jamie Chen on 2021-07-19.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"

NS_ASSUME_NONNULL_BEGIN

@interface DeliveryCar : NSObject

-(BOOL)deliverPizza:(Pizza *)pizza;

@end

NS_ASSUME_NONNULL_END
