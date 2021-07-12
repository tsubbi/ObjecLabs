//
//  DivideQuestion.m
//  Lab3
//
//  Created by Jamie Chen on 2021-07-11.
//

#import "DivideQuestion.h"

@implementation DivideQuestion

- (instancetype)init {
    if (self = [super init]) {
        [self generateQuestion];
    }
    
    return self;
}

- (void) generateQuestion {
    int firstNumber = 1 + arc4random_uniform(100);
    int secondNumber = 2 + arc4random_uniform(9);
    
    while (firstNumber%secondNumber != 0) {
        secondNumber = 2 + arc4random_uniform(10);
    }
    
    NSString *answer1 = [NSString stringWithFormat:@"%d", 1 + arc4random_uniform(100)];
    NSString *answer2 = [NSString stringWithFormat:@"%d", 1 + arc4random_uniform(100)];
    NSString *answer3 = [NSString stringWithFormat:@"%d", 1 + arc4random_uniform(100)];
    NSString *answer4 = [NSString stringWithFormat:@"%d", firstNumber / secondNumber];
    
    NSString *question = [NSString stringWithFormat:@"What is %d devide %d?", firstNumber, secondNumber];
    NSDictionary *choices = @{answer1: @0, answer2: @0, answer3: @0, answer4: @1};
    
    self.questionText = question;
    self.answerChoices = choices;
    self.answerSet = [choices allKeys];
}

@end
