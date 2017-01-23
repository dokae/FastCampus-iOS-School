//
//  Wizard.m
//  170117-2
//
//  Created by 박재한 on 2017. 1. 17..
//  Copyright © 2017년 noName. All rights reserved.
//

#import "Wizard.h"

@implementation Wizard


/* 170117 작성
- (id)phisicalAttack {
    NSLog(@"물리공격~~");
    return nil;
}

- (id)magicalAttack{
    NSLog(@"마법공격~~");
    return nil;
}
*/

// 170118 작성
- (NSUInteger)phisicalAttack:(Warrior *)toSomeone{
   

    NSLog(@"%@에게 물리공격~~", to);
    return nil;
}

- (id)magicalAttack:(id)to {
    NSLog(@"%@에게 마법공격~~", to);
    return nil;
}

- (id)heal:(id)to {
    NSLog(@"%@에게 치유해 줍니다", to);
    return nil;
}

@end
