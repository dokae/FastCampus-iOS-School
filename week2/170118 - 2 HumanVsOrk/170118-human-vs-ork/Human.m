//
//  Human.m
//  170118-human-vs-ork
//
//  Created by 박재한 on 2017. 1. 18..
//  Copyright © 2017년 noName. All rights reserved.
//

#import "Human.h"
#import "Ork.h"

@implementation Human

- (id)attackTo:(Ork *)ork
{
    
    NSUInteger atk = self.ap - ork.def;
    ork.hp = ork.hp - atk;
 
    NSLog(@"오크의 체력은 %lu입니다", ork.hp);
    
    
    return nil;
}

- (void)jumpTo:(GameCharacter *)character{
    
    [super jumpTo:character]
    // NSLog(@"%@에게로 멀리멀리 높이높이높이 점프 합니다", character.name);
    
}




@end
