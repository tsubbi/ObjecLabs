//
//  PaymentGateway.h
//  Lab12
//
//  Created by Jamie Chen on 2021-07-16.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol PaymentDelegate <NSObject>

- (void)processPaymentAmount:(NSInteger)amount;
- (BOOL)canProcessPayment: (NSInteger)payment;

@end

@interface PaymentGateway : NSObject

@property (nonatomic, weak) id<PaymentDelegate> delegate;

- (BOOL)processPaymentAmount:(NSInteger)amount;

@end

NS_ASSUME_NONNULL_END
