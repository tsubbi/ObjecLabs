//
//  main.m
//  Lab12
//
//  Created by Jamie Chen on 2021-07-16.
//

#import <Foundation/Foundation.h>
#import "InputPromptController.h"
#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "StripePayService.h"
#import "AmazonPayService.h"
#import "ApplePayService.h"
#import "GooglePayService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        int amount = 100 + arc4random() % (1000-100+1);
        InputPromptController *userInputs = [[InputPromptController alloc] init];
        PaymentGateway *gateway = [[PaymentGateway alloc] init];
        PaypalPaymentService *paypal = [[PaypalPaymentService alloc] init];
        StripePayService *stripe = [[StripePayService alloc] init];
        AmazonPayService *amazonPay = [[AmazonPayService alloc] init];
        ApplePayService *applePay = [[ApplePayService alloc] init];
        GooglePayService *googlePay = [[GooglePayService alloc] init];
        BOOL isPaymentFinished = NO;
        
        do {
            printf("%s $%d\n", "Thank you for shopping at Acme.com Your total today is", amount);
            NSString *input = [userInputs inputFromPrompt:@"Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon 4: ApplePay 5: Google Pay 6: Quit Pay\n"];
            input = [[input componentsSeparatedByString:@"\n"] firstObject];
            int method = [input intValue];
            
            switch (method) {
                case 1:
                    // paypal
                    gateway.delegate = paypal;
                    break;
                case 2:
                    // stripe
                    gateway.delegate = stripe;
                    break;
                case 3:
                    // amazon
                    gateway.delegate = amazonPay;
                    break;
                case 4:
                    // apple pay
                    gateway.delegate = applePay;
                    break;
                case 5:
                    // google pay
                    gateway.delegate = googlePay;
                case 6:
                    printf("Please come back again.\n");
                    isPaymentFinished = true;
                    break;
                default:
                    printf("Sorry, unidentified payment method. please try again.\n");
                    break;
            }
            
            if (method < 6) {
                isPaymentFinished = [gateway processPaymentAmount:amount];
            }
        } while (!isPaymentFinished);
    }
    return 0;
}
