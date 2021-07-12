//
//  main.m
//  Lab4
//
//  Created by Jamie Chen on 2021-07-09.
//

#import <Foundation/Foundation.h>
#import "Lab4Question/Question.h"
#import "Lab4Question/AddQuestion.h"
#import "Lab4Question/MinusQuestion.h"
#import "Lab4Question/MultiplyQuestion.h"
#import "Lab4Question/DivideQuestion.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char inputChars[255];

        Question *addQ = [[AddQuestion alloc] init];
        Question *minusQ = [[MinusQuestion alloc] init];
        Question *multiplyQ = [[MultiplyQuestion alloc] init];
        Question *divisionQ = [[DivideQuestion alloc] init];
        ScoreKeeper *score = [[ScoreKeeper alloc] init];
        
        NSArray *questions = [NSArray arrayWithObjects:addQ, minusQ, multiplyQ, divisionQ, nil];
        int count = 0;
        do {
            Question *questionSet = questions[count];
            const char *question = [[NSString stringWithFormat:@"%@\n%@\n",
                                     [questionSet getQuestion],
                                     [questionSet getAnswers]] UTF8String];
            printf("%s", question);
            
            // limit input to max 255 characters
            fgets(inputChars, 255, stdin);
            
            printf("your input string is %s\n", inputChars);
            // convert char array to an NSString object
            NSString *inputString = [NSString stringWithUTF8String:inputChars];
            
            int answer = [inputString intValue];
            if (answer == 0 || answer > 4) {
                printf("Sorry I am unable to identify your answer.\n");
                continue;
            } else {
                BOOL result = [questionSet checkAnswer:answer];
                if (result) {
                    printf("Right!\n");
                } else {
                    printf("Wrong!\n");
                }
                
                [score updateScore:result];
//                - (void) calculateTime: (NSDate *)startTime end:(NSDate *)endTime
                [score calculateTime:questionSet.startTime end:questionSet.endTime];
                count++;
            }
            if (count < 4) {
                printf("======NEXT QUESTION======\n");
            } else {
                [score getAverageTime];
            }
        } while (count < [questions count]);
    }
    return 0;
}
