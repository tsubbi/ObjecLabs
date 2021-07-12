//
//  ContactList.m
//  Lab5
//
//  Created by Jamie Chen on 2021-07-12.
//

#import "ContactList.h"

@implementation ContactList

-(id) init {
    Contact *user1 = [[Contact alloc] init:@"Some name" email:@"someone@gmail.com"];
    Contact *user2 = [[Contact alloc] init:@"some other" email:@"differentOne@hotmail.com"];
    _contactList = [[NSMutableArray alloc] initWithObjects:user1, user2, nil];
    
    return self;
}

-(void) addContact: (Contact *)newContact {
    [_contactList addObject:newContact];
    printf("contact added.\n");
}

-(NSString *)showList {
    NSMutableString *listStr = [[NSMutableString alloc] init];
    
    for (NSInteger i=0; i<[_contactList count]; i++) {
        Contact *user = _contactList[i];
        NSString *format = [NSString stringWithFormat:@"%ld: %@ (%@)\n", (long)i, user.fullName, user.email];
        [listStr appendString:format];
    }
    
    return [NSString stringWithString:listStr];
}
@end
