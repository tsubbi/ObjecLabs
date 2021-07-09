//
//  main.m
//  Lab3
//
//  Created by Jamie Chen on 2021-07-07.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char inputChars[255];

        printf("Input a string: ");
        // limit input to max 255 characters
        fgets(inputChars, 255, stdin);
        // convert char array to an NSString object
        NSString *someString = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
    }
    return 0;
}
