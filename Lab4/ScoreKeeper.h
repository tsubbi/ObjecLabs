//
//  ScoreKeeper.h
//  Lab3
//
//  Created by Jamie Chen on 2021-07-11.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ScoreKeeper : NSObject {
    int wrongCount;
    int rightCount;
    NSMutableArray *answerTime;
}

- (id)init;
- (void) updateScore: (BOOL)isRightAnswer;
- (void) calculateTime: (NSDate *)startTime end:(NSDate *)endTime;
- (void) getAverageTime;

@end

NS_ASSUME_NONNULL_END
