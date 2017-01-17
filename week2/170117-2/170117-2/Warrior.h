//
//  Warrior.h
//  170117-2
//
//  Created by 박재한 on 2017. 1. 17..
//  Copyright © 2017년 noName. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Warrior : NSObject

@property id health;
@property id mana;
@property id physicalPower;
@property id magicalPower;
@property id weapon;

- (id)phisicalAttack;
- (id)magicalAttack;

@end
