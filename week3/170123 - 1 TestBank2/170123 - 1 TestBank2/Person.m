//
//  Person.m
//  170123 - 1 TestBank2
//
//  Created by 박재한 on 2017. 1. 23..
//  Copyright © 2017년 noName. All rights reserved.
//

#import "Person.h"
#import "Bank.h"

@implementation Person


- (void)depositMoney:(int)money bankName:(Bank *)bank
{
    
    self.asset = 500000;
    self.asset = self.asset + money;
    NSLog(@"%@가 %@은행에 %i를 입금했습니다", self.name, bank.name, money);
    
}


//“~~가~~은행에서자신의계좌를조회해본결과, 총자산은~~원입니다
- (void)viewAsset:(Bank *)bank
{
    NSLog(@"%@가 %@은행에서 조회해본 결과 총자산은 %i원입니다", self.name, bank.name, self.asset);
    
}

- (void)transper:(Person *)toPerson money:(int)money
{
    NSLog(@"%@가 %@에게 %i를 이체했습니다", self.name, toPerson.name, money);
}


@end
