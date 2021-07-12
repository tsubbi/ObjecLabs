//
//  Question.h
//  Lab3
//
//  Created by Jamie Chen on 2021-07-08.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Question : NSObject {
    NSString *questionText;
    NSArray *answerSet;
    NSDictionary *answerChoices;
}

- (id)init: (NSString *)question withChoices:(NSDictionary *)choices;
- (BOOL) checkAnswer: (int)answer;
- (NSString *)getAnswers;
- (NSString *)getQuestion;

@end

NS_ASSUME_NONNULL_END
