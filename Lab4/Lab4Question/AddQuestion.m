//
//  AddQuestion.m
//  Lab3
//
//  Created by Jamie Chen on 2021-07-09.
//

#import "AddQuestion.h"

@implementation AddQuestion

- (instancetype)init {
    if (self = [super init]) {
        [self generateQuestion];
    }
    
    return self;
}

- (void) generateQuestion {
    int firstNumber = 1 + arc4random_uniform(100);
    int secondNumber = 1 + arc4random_uniform(firstNumber);
    
    NSString *answer1 = [NSString stringWithFormat:@"%d", 1 + arc4random_uniform(200)];
    NSString *answer2 = [NSString stringWithFormat:@"%d", 1 + arc4random_uniform(200)];
    NSString *answer3 = [NSString stringWithFormat:@"%d", firstNumber + secondNumber];
    NSString *answer4 = [NSString stringWithFormat:@"%d", 1 + arc4random_uniform(200)];
    
    NSString *question = [NSString stringWithFormat:@"What is %d plus %d?", firstNumber, secondNumber];
    NSDictionary *choices = @{answer1: @0, answer2: @0, answer3: @1, answer4: @0};
    
    self.questionText = question;
    self.answerChoices = choices;
    self.answerSet = [choices allKeys];
}

@end
