//
//  Question.h
//  Lab3
//
//  Created by Jamie Chen on 2021-07-08.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Question : NSObject

@property (nonatomic, copy) NSString *questionText;
@property (nonatomic) NSArray *answerSet;
@property (nonatomic) NSDictionary *answerChoices;
@property (nonatomic, strong) NSDate *startTime;
@property (nonatomic, strong) NSDate *endTime;

- (void) generateQuestion;
- (BOOL) checkAnswer: (int)answer;
- (NSString *)getAnswers;
- (NSString *)getQuestion;

@end

NS_ASSUME_NONNULL_END
