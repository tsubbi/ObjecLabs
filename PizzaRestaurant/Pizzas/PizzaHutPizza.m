//
//  PizzaHutPizza.m
//  PizzaRestaurant
//
//  Created by Jamie Chen on 2021-07-16.
//

#import "PizzaHutPizza.h"
#import "Kitchen.h"

@implementation PizzaHutPizza

- (BOOL)kitchen:(nonnull Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(nonnull NSArray *)toppings {
    return [toppings containsObject:@"anchovies"];
}

- (BOOL)kitchenShouldUpgradeOrder:(nonnull Kitchen *)kitchen {
    return NO;
}

- (void)kitchenDidMakePizza:(Pizza *)pizza {
    NSLog(@"You ordered a %@ pizza with toppsing of %@", [pizza getPizzaSize:pizza.size], pizza.toppings);
}

@end
