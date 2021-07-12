//
//  MultiplyQuestion.m
//  Lab3
//
//  Created by Jamie Chen on 2021-07-11.
//

#import "MultiplyQuestion.h"

@implementation MultiplyQuestion

- (instancetype)init {
    if (self = [super init]) {
        [self generateQuestion];
    }
    
    return self;
}

- (void) generateQuestion {
    int firstNumber = 1 + arc4random_uniform(10);
    int secondNumber = 1 + arc4random_uniform(10);
    
    NSString *answer1 = [NSString stringWithFormat:@"%d", firstNumber * secondNumber];
    NSString *answer2 = [NSString stringWithFormat:@"%d", 1 + arc4random_uniform(100)];
    NSString *answer3 = [NSString stringWithFormat:@"%d", 1 + arc4random_uniform(100)];
    NSString *answer4 = [NSString stringWithFormat:@"%d", 1 + arc4random_uniform(100)];
    
    NSString *question = [NSString stringWithFormat:@"What is %d multiply %d?", firstNumber, secondNumber];
    NSDictionary *choices = @{answer1: @1, answer2: @0, answer3: @0, answer4: @0};
    
    self.questionText = question;
    self.answerChoices = choices;
    self.answerSet = [choices allKeys];
}

@end
