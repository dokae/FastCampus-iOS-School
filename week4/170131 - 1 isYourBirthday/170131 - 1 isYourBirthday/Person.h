//
//  Person.h
//  170131 - 1 isYourBirthday
//
//  Created by 박재한 on 2017. 1. 31..
//  Copyright © 2017년 noName. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property NSString *name;
@property NSString *job;
@property NSString *address;
@property NSUInteger age;
@property NSUInteger height;
@property NSUInteger birthday;
@property NSString *bloodType;

- (instancetype)initWithName:(NSString *)value;
- (void)settingJob:(NSString *)value;
- (bool)isBirthday;

- (void)think:(NSString *)value;
- (void)talk:(NSString *)value;


@end
