//
//  ScoreKeeper.m
//  Lab3
//
//  Created by Jamie Chen on 2021-07-11.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (id)init {
    rightCount = 0;
    wrongCount = 0;
    answerTime = [[NSMutableArray alloc] init];
    
    return self;
}

- (void) updateScore: (BOOL)isRightAnswer {
    if (isRightAnswer) {
        rightCount++;
    } else {
        wrongCount++;
    }
    
    [self showResult];
}

- (void) showResult {
    int total = 4;
    float rightPercent = (rightCount*100.f/total);
    
    NSString *scoreText = [NSString stringWithFormat:@"Score: %d right, %d wrong --- %2.0f%%\n", rightCount, wrongCount, rightPercent];
    
    printf("%s", [scoreText UTF8String]);
}

- (void) calculateTime: (NSDate *)startTime end:(NSDate *)endTime {
    NSTimeInterval secondsBetween = [endTime timeIntervalSinceDate:startTime];
    NSString *secondsText = [NSString stringWithFormat:@"You have used %.02fseconds to answer the question\n", secondsBetween];
    NSNumber *n = [NSNumber numberWithDouble:secondsBetween];
    [answerTime addObject:n];
    printf([secondsText UTF8String]);
}

- (void) getAverageTime {
    double total = 0;
    for (NSNumber *n in answerTime) {
        total += [n doubleValue];
    }
    double avg = total/[answerTime count];
    
    NSString *text = [NSString stringWithFormat:@"total time: %2.0fs, average time: %2.0fs\n", total, avg];
    printf([text UTF8String]);
}
@end
