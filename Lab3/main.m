//
//  main.m
//  Lab3
//
//  Created by Jamie Chen on 2021-07-07.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "AddQuestion.h"
#import "MinusQuestion.h"
#import "MultiplyQuestion.h"
#import "DivideQuestion.h"
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
            const char *question = [[NSString stringWithFormat:@"%@\n%@\n",
                                     [questions[count] getQuestion],
                                     [questions[count] getAnswers]] UTF8String];
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
                BOOL result = [addQ checkAnswer:answer];
                if (result) {
                    printf("Right!\n");
                } else {
                    printf("Wrong!\n");
                }
                
                [score updateScore:result];
                count++;
            }
            if (count < 4) {
                printf("======NEXT QUESTION======\n");
            }
        } while (count < [questions count]);
    }
    return 0;
}
