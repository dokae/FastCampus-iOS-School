//
//  Ork.m
//  170118-human-vs-ork
//
//  Created by 박재한 on 2017. 1. 18..
//  Copyright © 2017년 noName. All rights reserved.
//

#import "Ork.h"
#import "Human.h"

@implementation Ork

//- (id)attackTo:(Human *)human
//{
//   
//    NSUInteger atk = self.ap - human.def;
//    human.hp = human.hp - atk;
//    
//    NSLog(@"휴먼의 체력은 %lu입니다", human.hp);
//    
//    
//    return nil;
//}

- (void)jumpTo:(GameCharacter *)character
{
    NSLog(@"높이 뛰어서 %@에게로 점프합니다", character.name);
    [super jumpTo: character];
    
}

@end
