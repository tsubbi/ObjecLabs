//
//  Contact.m
//  Lab5
//
//  Created by Jamie Chen on 2021-07-12.
//

#import "Contact.h"

@implementation Contact

- (id) init: (NSString *)fullName email:(NSString *)e {
    _fullName = fullName;
    _email = e;
    
    return self;
}

@end
