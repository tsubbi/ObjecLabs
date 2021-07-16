//
//  main.m
//  PizzaRestaurant
//
//  Created by Jamie Chen on 2021-07-16.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "InputPromt.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InputPromt *prompt = [[InputPromt alloc] init];
        
        
        NSString *pickedStore = [prompt inputFromPrompt:@"Which brand of pizza do you like? (\"Panago Pizza\" or \"Pizza Hut\""];
        
    }
    return 0;
}
