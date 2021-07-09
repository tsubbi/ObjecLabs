//
//  Question.m
//  Lab3
//
//  Created by Jamie Chen on 2021-07-08.
//

#import "Question.h"

@implementation Question


- (id)init: (NSString *)question withChoices:(NSDictionary *)choices {
    questionText = question;
    answerChoices = choices;
    answerSet = [choices allKeys];
    
    return self;
}

- (BOOL) checkAnswer: (int)answer {
    NSString *key = answerSet[answer-1];
    NSNumber *choosenAnswer = answerChoices[key];
    return ([choosenAnswer intValue] == 1);
}

@end
