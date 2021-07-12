//
//  Contact.h
//  Lab5
//
//  Created by Jamie Chen on 2021-07-12.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Contact : NSObject

@property (nonatomic, copy) NSString *fullName;
@property (nonatomic, copy) NSString *email;

- (id) init: (NSString *)fullName email:(NSString *)e;

@end

NS_ASSUME_NONNULL_END
