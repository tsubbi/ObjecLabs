//
//  AmazonPayService.m
//  Lab12
//
//  Created by Jamie Chen on 2021-07-16.
//

#import "AmazonPayService.h"

@implementation AmazonPayService

- (void)processPaymentAmount:(NSInteger)amount { 
    printf("Amazon processed amount $%d\n", (int)amount);
}

- (BOOL)canProcessPayment:(NSInteger)payment {
    NSInteger accountAmount = 750;
    return payment < accountAmount;
}

@end
