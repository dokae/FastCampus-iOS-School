//
//  GameCharacter.m
//  170119 - 3 Inheritance
//
//  Created by 박재한 on 2017. 1. 19..
//  Copyright © 2017년 noName. All rights reserved.
//

#import "GameCharacter.h"




@implementation GameCharacter




- (void)jumpTo:(GameCharacter *)someCharacter
{
    
    NSLog(@"%@에게 점프", someCharacter.name);
    
}


- (void)atkTo:(GameCharacter *)someCharacter
{

    self.hp = self.hp - someCharacter.ap;
    NSLog(@"%@의 체력은 %lu", self.name, self.hp);
    
}


- (void)baseHP{

    self.hp = 5000;
    
}


- (instancetype)initWithName:(NSString *)name gender:(NSString *)gender age:(NSString *)age
{
    self = [super init];
    self.name = @"초기화매서드 실습";
    self.gender = @"man";
    self.age = @"100";
    
    NSLog(@"이름은 %@, 성별은 %@, 나이는 %@", self.name, self.gender, self.age);
    
    return self;
}



@end
