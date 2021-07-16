//
//  GooglePayService.m
//  Lab12
//
//  Created by Jamie Chen on 2021-07-16.
//

#import "GooglePayService.h"

@implementation GooglePayService

- (BOOL)canProcessPayment:(NSInteger)payment {
    int tmp = (arc4random() % 10);
    return tmp%2 == 0;
}

- (void)processPaymentAmount:(NSInteger)amount {
    printf("Google Pay processed amount $%d\n", (int)amount);
}

@end
