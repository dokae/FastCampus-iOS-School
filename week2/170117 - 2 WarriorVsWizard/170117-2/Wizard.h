//
//  Wizard.h
//  170117-2
//
//  Created by 박재한 on 2017. 1. 17..
//  Copyright © 2017년 noName. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Warrior;

@interface Wizard : NSObject

@property NSUInteger health;
@property NSUInteger mana;
@property NSUInteger physicalPower;
@property NSUInteger magicalPower;
@property NSString *weapon;


- (NSUInteger)phisicalAttack:(Warrior *)someCharacter;
- (NSUInteger)magicalAttack:(Warrior *)someCharacter;
- (NSUInteger)heal:(Warrior *)someCharacter;



@end

