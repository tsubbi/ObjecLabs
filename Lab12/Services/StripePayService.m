//
//  StripPayService.m
//  Lab12
//
//  Created by Jamie Chen on 2021-07-16.
//

#import "StripePayService.h"

@implementation StripePayService


- (BOOL)canProcessPayment:(NSInteger)payment { 
    NSInteger accountAmount = 150;
    return payment < accountAmount;
}

- (void)processPaymentAmount:(NSInteger)amount { 
    printf("Stripe processed amount $%d\n", (int)amount);
}

@end
