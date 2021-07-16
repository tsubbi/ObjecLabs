//
//  main.m
//  PizzaRestaurant
//
//  Created by Jamie Chen on 2021-07-16.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "InputPromt.h"
#import "PanagoPizza.h"
#import "PizzaHutPizza.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InputPromt *prompt = [[InputPromt alloc] init];
        Kitchen *kitchen = [[Kitchen alloc] init];
        PanagoPizza *panago = [[PanagoPizza alloc] init];
        PizzaHutPizza *pizzahut = [[PizzaHutPizza alloc] init];
        
        
        NSString *pickedStore = [prompt inputFromPrompt:@"Which brand of pizza do you like? (\"Panago\" or \"Pizzahut\")"];
        NSString *pickedSize = [[prompt inputFromPrompt:@"What size of pizza? (\"Small\", \"Medium\", or \"Large\")"] lowercaseString];
        PizzaSize *pizzaSize = small;
        if ([pickedSize isEqualToString:@"small"]) {
            pizzaSize = small;
        } else if ([pickedSize isEqualToString:@"medium"]) {
            pizzaSize = medium;
        } else if ([pickedSize isEqualToString:@"large"]) {
            pizzaSize = large;
        }
        NSString *selectedToppingText = [prompt inputFromPrompt:@"Please pick toppings. You may pick more than one. Use space to seperate toppings. (\"mashroom\", \"cheese\", \"pepper\", \"anchovies\", \"peperoni\", \"cheese\")"];
        NSArray *selectedToppings = [selectedToppingText componentsSeparatedByString:@" "];
        
        if ([pickedStore isEqualToString:@"Panago"]) {
            kitchen.delegate = panago;
        } else if ([pickedStore isEqualToString:@"Pizzahut"]) {
            kitchen.delegate = pizzahut;
        }
        
        [kitchen makePizzaWithSize:pizzaSize toppings:selectedToppings];
    }
    return 0;
}
