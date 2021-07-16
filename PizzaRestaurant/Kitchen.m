//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Jamie Chen on 2021-07-16.
//

#import "Kitchen.h"

@implementation Kitchen

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings {
    if (![_delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings]) {
        NSLog(@"Yeks! No anchobies!! Remove confirmed!");
        NSMutableArray *arrangedToppings = [NSMutableArray arrayWithArray:toppings];
        [arrangedToppings removeObject:@"anchovies"];
        toppings = [arrangedToppings copy];
    }
    
    Pizza *pizza = [[Pizza alloc]initSize:size topping:toppings];
    
    if ([_delegate respondsToSelector:@selector(kitchenDidMakePizza:)]) {
        [_delegate kitchenDidMakePizza:pizza];
    }
    
    return pizza;
}

@end
