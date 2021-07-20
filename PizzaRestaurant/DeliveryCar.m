//
//  DeliveryCar.m
//  PizzaRestaurant
//
//  Created by Jamie Chen on 2021-07-19.
//

#import "DeliveryCar.h"

@implementation DeliveryCar

-(BOOL)deliverPizza:(Pizza *)pizza {
    printf("Your pizza %s is delivered!\n", [[pizza description] UTF8String]);
    return YES;
}

@end
