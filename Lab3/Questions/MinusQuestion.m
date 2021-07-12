//
//  MinusQuestion.m
//  Lab3
//
//  Created by Jamie Chen on 2021-07-11.
//

#import "MinusQuestion.h"

@implementation MinusQuestion

- (instancetype)init {
    NSString *question = @"What is 15 minus 8?";
    NSDictionary *choices = @{@"4": @0, @"8": @0, @"10": @0, @"7": @0};
    
    return [self init:question withChoices:choices];
}

@end
