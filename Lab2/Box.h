//
//  Box.h
//  Lab2
//
//  Created by Jamie Chen on 2021-07-05.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Box : NSObject {
    float length;
    float width;
    float height;
}

@property(nonatomic, readwrite) float length;
@property(nonatomic, readwrite) float width;
@property(nonatomic, readwrite) float height;

-(id)initValues: (float)length width:(float)w height:(float)h;
-(float) volume;
-(BOOL) isBox1GreaterThanBox2: (Box*)box2;
- (float) compareBox: (float)smallerBoxVolume;
@end

NS_ASSUME_NONNULL_END
