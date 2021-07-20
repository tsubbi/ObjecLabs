//
//  DeliverService.m
//  PizzaRestaurant
//
//  Created by Jamie Chen on 2021-07-19.
//

#import "DeliverService.h"
#import "DeliveryCar.h"

@implementation DeliverService

- (id) init {
    _pizzaDescription = [[NSMutableArray alloc] init];
    
    return self;
}

-(BOOL)deliverPizza:(Pizza *)pizza {
    DeliveryCar *car = [[DeliveryCar alloc] init];
    [_pizzaDescription addObject:pizza.description];
    
    return [car deliverPizza:pizza];
}

-(NSMutableArray *) deliveredPizzaDescription {
    return _pizzaDescription;
}

@end
