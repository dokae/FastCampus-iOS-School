//
//  GameCharacter.h
//  170119 - 3 Inheritance
//
//  Created by 박재한 on 2017. 1. 19..
//  Copyright © 2017년 noName. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameCharacter : NSObject

@property id name;
@property NSUInteger hp;
@property NSUInteger ap;
@property NSString *gender;
@property NSString *age;

- (void)jumpTo:(GameCharacter *)someCharacter;
- (void)atkTo:(GameCharacter *)someCharacter;
- (void)baseHP;
- (instancetype)initWithName:(NSString *)name gender:(NSString *)gender age:(NSString *)age;



@end
