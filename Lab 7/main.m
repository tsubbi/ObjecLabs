//
//  main.m
//  Lab 7
//
//  Created by Jamie Chen on 2021-07-14.
//

#import <Foundation/Foundation.h>
#import "NSString+PigLatinization.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        printf("%s", [[@"Shell" stringByPigLatinization] UTF8String]);
        printf("\n");
        printf("%s", [[@"Tale" stringByPigLatinization] UTF8String]);
        printf("\n");
    }
    return 0;
}
