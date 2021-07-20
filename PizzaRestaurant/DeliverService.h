//
//  DeliverService.h
//  PizzaRestaurant
//
//  Created by Jamie Chen on 2021-07-19.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"

NS_ASSUME_NONNULL_BEGIN

@interface DeliverService : NSObject
@property NSMutableArray *pizzaDescription;

-(BOOL)deliverPizza:(Pizza *)pizza;
-(NSMutableArray *) deliveredPizzaDescription;

@end

NS_ASSUME_NONNULL_END
