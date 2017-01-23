//
//  Tv.h
//  170117-1
//
//  Created by 박재한 on 2017. 1. 17..
//  Copyright © 2017년 noName. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Tv : NSObject

@property id brand;
@property id color;
@property id size;
@property id resolution;

- (id)on;
- (id)off;
- (id)volumeUp;
- (id)volumeDown;
- (id)Mute;

@end
