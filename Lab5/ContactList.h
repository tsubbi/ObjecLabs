//
//  ContactList.h
//  Lab5
//
//  Created by Jamie Chen on 2021-07-12.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

NS_ASSUME_NONNULL_BEGIN

@interface ContactList : NSObject

@property (nonatomic) NSMutableArray *contactList;

-(id) init;
-(void) addContact: (Contact *)newContact;
-(NSString *)showList;

@end

NS_ASSUME_NONNULL_END
