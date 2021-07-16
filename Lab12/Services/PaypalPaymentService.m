//
//  PaypalPaymentService.m
//  Lab12
//
//  Created by Jamie Chen on 2021-07-16.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService



- (BOOL)canProcessPayment:(NSInteger)payment {
    NSInteger accountAmount = 500;
    return payment < accountAmount;
}

- (void)processPaymentAmount:(NSInteger)amount {
    printf("Paypal processed amount $%d\n", (int)amount);
}

@end
