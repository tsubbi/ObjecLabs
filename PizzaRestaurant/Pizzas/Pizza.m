//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Jamie Chen on 2021-07-16.
//

#import "Pizza.h"

@implementation Pizza

-(id) initSize: (PizzaSize)size topping:(NSArray *)toppings {
    _size = size;
    _toppings = toppings;
    
    return self;
}

- (NSString *) getPizzaSize: (PizzaSize) size {
    switch (size) {
        case small:
            return @"small";
        case medium:
            return @"medium";
        case large:
            return @"large";
        default:
            NSLog(@"No size");
            break;
    }
}

@end
