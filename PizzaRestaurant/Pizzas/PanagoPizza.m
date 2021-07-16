//
//  PanagoPizza.m
//  PizzaRestaurant
//
//  Created by Jamie Chen on 2021-07-16.
//

#import "PanagoPizza.h"

@implementation PanagoPizza

- (BOOL)kitchen:(nonnull Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(nonnull NSArray *)toppings {
    return YES;
}

- (BOOL)kitchenShouldUpgradeOrder:(nonnull Kitchen *)kitchen {
    return YES;
}

- (void)kitchenDidMakePizza:(Pizza *)pizza {
    NSLog(@"You ordered a %@ pizza with toppsing of %@", [pizza getPizzaSize:pizza.size], pizza.toppings);
}

@end
