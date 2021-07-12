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

@end
