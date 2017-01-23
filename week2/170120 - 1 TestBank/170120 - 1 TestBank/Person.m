//
//  Person.m
//  170120 - 1 TestBank
//
//  Created by 박재한 on 2017. 1. 20..
//  Copyright © 2017년 noName. All rights reserved.
//

#import "Person.h"
#import "Bank.h"


@implementation Person

//사람의 입금
- (void)depositMoney:(NSUInteger)money bank:(Bank *)bank {

    self.asset = self.asset + money;
    
    NSLog(@"%@이(가) %@에 %lu를 입금했습니다", self.name, bank.name, money);
}


//사람의 조회
- (void)checkAccount:(Bank *)bank {
    
    NSLog(@"%@이(가) %@에서 자신의 계좌를 조회해 본 결과, 총 자산은 %lu원 입니다", self.name, bank.name, self.asset);
    
}





@end
