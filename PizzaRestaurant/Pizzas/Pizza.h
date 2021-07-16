//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Jamie Chen on 2021-07-16.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef enum: NSInteger {
    small,
    medium,
    large
} PizzaSize;

@interface Pizza : NSObject

@property (nonatomic) PizzaSize size;
@property (nonatomic) NSArray *toppings;

- (id) initSize: (PizzaSize)size topping:(NSArray *)toppings;
- (NSString *) getPizzaSize: (PizzaSize) size;

@end

NS_ASSUME_NONNULL_END
