//
//  InputCollector.m
//  Lab5
//
//  Created by Jamie Chen on 2021-07-12.
//

#import "InputCollector.h"

@implementation InputCollector

-(NSString *)inputFromPrompt: (NSString *)promptingString {
    char inputChars[255];
    printf("%s", [promptingString UTF8String]);
    // limit input to max 255 characters
    fgets(inputChars, 255, stdin);

    return [[[NSString stringWithUTF8String:inputChars] componentsSeparatedByString:@"\n"] firstObject];
}

@end
