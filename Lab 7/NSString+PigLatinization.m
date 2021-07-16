//
//  NSString+PigLatinization.m
//  Lab 7
//
//  Created by Jamie Chen on 2021-07-14.
//

#import "NSString+PigLatinization.h"

@implementation NSString (PigLatinization)

-(NSString *)stringByPigLatinization {
    NSString *firstCharacter = [self substringToIndex:1];
    
    if (![firstCharacter isFirstCharacterIsVowel]) {
        if (![self isClusterWord]) {
            firstCharacter = [NSString stringWithFormat:@"%@%@", [firstCharacter uppercaseString], @"ay"];
            NSString *trimmedString = [self substringFromIndex:1];
            
            return [NSString stringWithFormat:@"%@%@", trimmedString, firstCharacter];
        } else {
            NSString *firstTwo = [self substringToIndex:2];
            NSString *trimmedString = [self substringFromIndex:2];
            
            return [NSString stringWithFormat:@"%@%@%@", trimmedString, firstTwo, @"ay"];
        }
    }
    
    return self;
}

- (BOOL) isClusterWord {
    NSString *firstTwoCharacter = [self substringToIndex:2];
    NSArray *clusters = [NSArray arrayWithObjects:@"Ch", @"Sh", @"Sm", @"St", @"Th", @"Ps", @"Ph", @"Pl", @"Gl", nil];

    for (int i = 0; i < [clusters count]; i++) {
        if ([clusters[i] isEqual:firstTwoCharacter]) {
            return YES;
        } else {
            continue;
        }
    }
    return NO;
}

- (BOOL) isFirstCharacterIsVowel {
    // convert string to ascii code
    // https://stackoverflow.com/a/7508302/14939990
    int asciiValue = [self characterAtIndex:0];
    
    switch (asciiValue) {
        case 65:
        case 69:
        case 73:
        case 79:
        case 85:
        case 97:
        case 101:
        case 105:
        case 111:
        case 117:
            return YES;
        default:
            return NO;
    }
}

@end
