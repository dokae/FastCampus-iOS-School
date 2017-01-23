//
//  Warrior.h
//  170117-2
//
//  Created by 박재한 on 2017. 1. 17..
//  Copyright © 2017년 noName. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Wizard;

@interface Warrior : NSObject

@property NSUInteger health;
@property NSUInteger mana;
@property NSUInteger physicalPower;
@property NSUInteger magicalPower;
@property NSString *weapon;
@property BOOL isDead;

- (id)phisicalAttackTo:(Wizard *)someCharacter;
- (id)magicalAttackTo:(Wizard *)someCharacter;
- (id)jumpTo:(id)somewhere;




@end
