//
//  Box.m
//  Lab2
//
//  Created by Jamie Chen on 2021-07-05.
//

#import "Box.h"

@implementation Box

- (id)initValues: (float)length width:(float)w height:(float)h {
    self = [self init];
    if (self) {
        _length = length;
        _width = w;
        _height = h;
    }
    return self;
}

- (float) volume {
    return _length * _height * _width;
}

- (BOOL) isBox1GreaterThanBox2: (Box*)box2 {
    return [self volume] > [box2 volume];
}

- (float) compareBox: (float)smallerBoxVolume {
    return [self volume] / smallerBoxVolume;
}
@end
