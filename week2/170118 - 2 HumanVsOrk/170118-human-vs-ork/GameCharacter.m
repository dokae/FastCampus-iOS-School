//
//  GameCharacter.m
//  170118-human-vs-ork
//
//  Created by 박재한 on 2017. 1. 19..
//  Copyright © 2017년 noName. All rights reserved.
//

#import "GameCharacter.h"

@interface GameCharacter ()

@property NSUInteger hp;
@property NSUInteger ap;
@property NSUInteger def;
@property NSString *name;


@end

@implementation GameCharacter

- (void)jumpTo:(GameCharacter *)character
{
    
    NSLog(@"%@에게로 점프 합니다.", character.name);
}

@end
