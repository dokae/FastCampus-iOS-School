//
//  main.m
//  170117-2
//
//  Created by 박재한 on 2017. 1. 17..
//  Copyright © 2017년 noName. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Warrior.h"
#import "Wizard.h"
#import "Person.h"

int main(int argc, const char * argv[]) {
    
    // [[Person alloc] init];
    // 또는 [Person new];는 같은 표현이다
    
    
    // 변수생성 및 초기화
    Person *you = [[Person alloc] init];
    // set: 프로퍼티 변수에 밸류 입력
    you.name = @"정빈";
    you.gender = @"여자";
    you.age = @25;
    [you eat];
    [you see];
    [you talk];
    
    Person *me = [[Person alloc] init];
    me.name = @"재한";
    me.gender = @"남자";
    me.age = @35;
    
    
    Warrior *jack = [Warrior new];
    jack.health = @100;
    jack.mana = @150;
    jack.physicalPower = @500;
    jack.magicalPower = @300;
    jack.weapon = @"sword";
    [jack phisicalAttack];
    [jack magicalAttack];
    
    
    Warrior *black = [Warrior new];
    black.health = @150;
    black.mana = @100;
    black.physicalPower = @600;
    black.magicalPower = @200;
    black.weapon = @"axe";
    [black phisicalAttack];
    [black magicalAttack];
    
    Wizard *rose = [Wizard new];
    rose.health = @100;
    rose.mana = @1000;
    rose.physicalPower = @100;
    rose.magicalPower = @500;
    rose.weapon = @"wand";
    [rose phisicalAttack];
    [rose magicalAttack];
    
    
    Wizard *max = [Wizard new];
    max.health = @150;
    max.mana = @800;
    max.physicalPower = @200;
    max.magicalPower = @400;
    max.weapon = @"bow";
    [max phisicalAttack];
    [max magicalAttack];
    
    
    // get
    NSLog(@"내이름은 %@입니다.", me.name);
    NSLog(@"이름, 성별, 나이는 = %@, %@, %@", me.name, me.gender, me.age);
    NSLog(@"Jack의 스탯은 체력 %@, 마나 %@, 힘 %@, 마법 %@, 무기 %@입니다.", jack.health, jack.mana, jack.physicalPower, jack.magicalPower, jack.weapon);
    
    return 0;
}
