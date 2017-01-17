//
//  Clock.h
//  170117-1
//
//  Created by 박재한 on 2017. 1. 17..
//  Copyright © 2017년 noName. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Clock : NSObject

@property id hourHand;
@property id minuteHand;
@property id secondHand;
@property id shape;
@property id number;

- (id)rotateSecondHand;
- (id)rotateMinuteHand;
- (id)rotateHourHand;

@end
