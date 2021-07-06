//
//  main.m
//  Lab2
//
//  Created by Jamie Chen on 2021-07-05.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    Box *box1 = [[Box alloc] initValues:3.0 width:3.0 height:3.0];
    Box *box2 = [[Box alloc] initValues:6.0 width:6.0 height:6.0];
    
    BOOL isGreaterThanBox2 = [box1 isBox1GreaterThanBox2:box2];
    float box1Value = [box1 volume];
    float box2Value = [box2 volume];
    
    NSLog(@"First Box's volume is: %f", box1Value);
    NSLog(@"Second Box's volume is: %f", box2Value);
    
    if (isGreaterThanBox2) {
        NSLog(@"First Box can contain %f times of Second Box", [box1 compareBox:box2Value]);
    } else {
        NSLog(@"Second Box can contain %f times of First Box", [box2 compareBox:box1Value]);
    }
    
    return 0;
}
