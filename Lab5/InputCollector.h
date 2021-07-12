//
//  InputCollector.h
//  Lab5
//
//  Created by Jamie Chen on 2021-07-12.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface InputCollector : NSObject

-(NSString *)inputFromPrompt: (NSString *)promptingString;

@end

NS_ASSUME_NONNULL_END
