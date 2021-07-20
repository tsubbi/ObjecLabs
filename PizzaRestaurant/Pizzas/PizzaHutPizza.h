//
//  PizzaHutPizza.h
//  PizzaRestaurant
//
//  Created by Jamie Chen on 2021-07-16.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "DeliverService.h"

NS_ASSUME_NONNULL_BEGIN

@interface PizzaHutPizza : NSObject<KitchenDelegate>

@property (nonatomic) DeliverService *service;

- (BOOL)kitchen:(nonnull Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(nonnull NSArray *)toppings;
- (BOOL)kitchenShouldUpgradeOrder:(nonnull Kitchen *)kitchen;
- (void)kitchenDidMakePizza:(Pizza *)pizza;

@end

NS_ASSUME_NONNULL_END
