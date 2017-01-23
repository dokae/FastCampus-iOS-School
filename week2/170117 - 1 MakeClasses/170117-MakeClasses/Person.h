//
//  Person.h
//  170117-1
//
//  Created by 박재한 on 2017. 1. 17..
//  Copyright © 2017년 noName. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject


// 프로퍼티(특징,속성) 정의
@property id name;
@property id gender;
@property id age;
@property id job;
@property id hairColor;
@property id eyeColor;
@property id skinColor;
@property id country;


// 메서드(동작,기능) 정의
- (id)see;
- (id)hear;
- (id)eat;
- (id)talk;
- (id)walk;
- (id)run;
- (id)sleep;
- (id)think;
- (id)jump;


@end
