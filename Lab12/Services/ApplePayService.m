//
//  ApplePayService.m
//  Lab12
//
//  Created by Jamie Chen on 2021-07-16.
//

#import "ApplePayService.h"

@implementation ApplePayService

- (BOOL)canProcessPayment:(NSInteger)payment {
    NSInteger accountAmount = 1000;
    return payment < accountAmount;
}

- (void)processPaymentAmount:(NSInteger)amount {
    printf("Apple Pay processed amount $%d\n", (int)amount);
}

@end
