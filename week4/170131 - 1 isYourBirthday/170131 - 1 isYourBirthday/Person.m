//
//  Person.m
//  170131 - 1 isYourBirthday
//
//  Created by 박재한 on 2017. 1. 31..
//  Copyright © 2017년 noName. All rights reserved.
//

#import "Person.h"

@implementation Person


- (instancetype)initWithName:(NSString *)value
{
    self = [super init];
    if (self) {
        self.name = value;
    }
    return self;
}


- (void)settingJob:(NSString *)value
{
    self.job = value;
}



- (bool)isBirthday
{
    
    NSUInteger today;
    
    NSLog(@"오늘 날짜를 입력해주세요 YYMMDD");
    scanf("%lu", &today);
    
    if (self.birthday == today) {
        return YES;
    }
    return NO;
    
}

- (void)think:(NSString *)value
{
    NSLog(@"%@하는 %@는 %@을 고민하다", self.job, self.name, value);
}

- (void)talk:(NSString *)value
{
        
}




@end
