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
#import "DeliverService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InputPromt *prompt = [[InputPromt alloc] init];
        Kitchen *kitchen = [[Kitchen alloc] init];
        PanagoPizza *panago = [[PanagoPizza alloc] init];
        PizzaHutPizza *pizzahut = [[PizzaHutPizza alloc] init];
        DeliverService *delivery = [[DeliverService alloc] init];
        
        
        NSString *pickedStore = [prompt inputFromPrompt:@"Which brand of pizza do you like? (\"Panago\" or \"Pizzahut\")"];
        NSString *pickedSize = [[prompt inputFromPrompt:@"What size of pizza? (\"Small\", \"Medium\", or \"Large\")"] lowercaseString];
        PizzaSize pizzaSize = small;
        if ([pickedSize isEqualToString:@"small"]) {
            pizzaSize = small;
        } else if ([pickedSize isEqualToString:@"medium"]) {
            pizzaSize = medium;
        } else if ([pickedSize isEqualToString:@"large"]) {
            pizzaSize = large;
        }
        NSString *selectedToppingText = [prompt inputFromPrompt:@"Please pick toppings. You may pick more than one. Use space to seperate toppings. (\"mashroom\", \"cheese\", \"pepper\", \"anchovies\", \"peperoni\", \"cheese\")"];
        NSArray *selectedToppings = [selectedToppingText componentsSeparatedByString:@" "];
        
        if ([pickedStore isEqualToString:@"Panago"] || [pickedStore isEqualTo:@"panago"]) {
            kitchen.delegate = panago;
            panago.service = delivery;
        } else if ([pickedStore isEqualToString:@"Pizzahut"]  || [pickedStore isEqualTo:@"pizzahut"]) {
            kitchen.delegate = pizzahut;
            pizzahut.service = delivery;
        }
        
        [kitchen makePizzaWithSize:pizzaSize toppings:selectedToppings];
        
        NSMutableArray *pizzaDescription = [delivery deliveredPizzaDescription];
        
        printf("%s", [pizzaDescription componentsJoinedByString:@" "]);
    }
    return 0;
}
