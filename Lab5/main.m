//
//  main.m
//  Lab5
//
//  Created by Jamie Chen on 2021-07-12.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSInteger commend = 0;
        ContactList *list = [[ContactList alloc] init];
        do {
            printf("What would you like to do next?\n");
            InputCollector *userInputs = [[InputCollector alloc] init];
            NSString *inputCollector = [userInputs inputFromPrompt:@" [new] - Create a new contact\n [list] - List all contacts\n [quit] -Exit Application\n"];
            NSArray *commends = @[@"new", @"list", @"quit"];
            commend = [commends indexOfObject:inputCollector];
            
            switch (commend) {
                case 0: {
                    // new
                    NSString *fullName = [userInputs inputFromPrompt:@"Please input full name:"];
                    NSString *email = [userInputs inputFromPrompt:@"Please input email:"];
                    Contact *newContact = [[Contact alloc] init:fullName email:email];
                    [list addContact:newContact];
                    break;
                }
                case 1: {
                    // list
                    printf("%s", [[list showList] UTF8String]);
                    break;
                }
                case 2:
                    break;
                default:
                    printf("Sorry, wrong commend\n");
                    break;
            }
            printf("=================================\n");
        } while (commend != 2);
    }
    return 0;
}
