//
//  main.m
//  Lab1
//
//  Created by Jamie Chen on 2021-07-05.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    // 255 unit long array of characters
    char inputChars[255];

    printf("Input a string: ");
    // limit input to max 255 characters
    fgets(inputChars, 255, stdin);
    // print as a c string
    printf("Your string is %s\n", inputChars);
    // convert char array to an NSString object
    NSString *inputString = [NSString stringWithUTF8String:inputChars];
    // print NSString object
    NSLog(@"Input was: %@", inputString);
    
    // MARK: - 1. Uppercase
    NSLog(@"1. Uppercased: %@", inputString.uppercaseString);
    // MARK: - 2. Lowercase
    NSLog(@"2. Lowercased: %@", inputString.lowercaseString);
    // MARK: - 3. Numberize
    int result = (int)[inputString integerValue];
    if (result) {
        NSLog(@"3. Numberized: %d", result);
    } else {
        NSLog(@"3. Unable to Numberize the string");
    }
    // MARK: - 4. Canadianize
    // https://stackoverflow.com/a/12638355/14939990
    NSLog(@"4. Canadianized: %@, eh?", [[inputString componentsSeparatedByString:@"\n"] firstObject]);
    // MARK: - 5. Respond
    // https://stackoverflow.com/a/2754075/14939990
    if ([inputString containsString:@"?"]) {
        NSLog(@"5. Respond: I don't know");
    } else if ([inputString containsString:@"!"]) {
        NSLog(@"5. Respond: Whoa, calm down!");
    } else {
        NSLog(@"5. Respond: I see");
    }
    // MARK: - 6 De-Space-It
    // https://www.tutorialspoint.com/how-to-replace-a-character-in-objective-c-string-for-iphone-sdk
    NSLog(@"6. De-Space-It: %@", [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"]);
    return 0;
}
