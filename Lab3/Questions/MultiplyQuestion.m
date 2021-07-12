//
//  MultiplyQuestion.m
//  Lab3
//
//  Created by Jamie Chen on 2021-07-11.
//

#import "MultiplyQuestion.h"

@implementation MultiplyQuestion

- (instancetype)init {
    NSString *question = @"What is 12 multiply 12?";
    NSDictionary *choices = @{@"144": @1, @"1000": @0, @"104": @0, @"96": @0};
    
    return [self init:question withChoices:choices];
}

@end
