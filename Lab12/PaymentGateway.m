//
//  PaymentGateway.m
//  Lab12
//
//  Created by Jamie Chen on 2021-07-16.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

- (BOOL)processPaymentAmount:(NSInteger)amount {
    if ([_delegate canProcessPayment:amount]) {
        [_delegate processPaymentAmount:amount];
        printf("\n");
        return YES;
    } else {
        printf("The paymont method's account is insufficient.\n");
        printf("\n");
        return NO;
    }
}

@end
