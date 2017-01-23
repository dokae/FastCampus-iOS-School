//
//  Man.m
//  170120 - 1 TestBank
//
//  Created by 박재한 on 2017. 1. 20..
//  Copyright © 2017년 noName. All rights reserved.
//

#import "Man.h"
#import "Bank.h"

@implementation Man

//사람의 입금 재정의
- (void)depositMoney:(NSUInteger)money bank:(Bank *)bank{
    
    [super depositMoney:money bank:bank];
    
}


//사람의 조회 재정의
- (void)checkAccount:(Bank *)bank {
    
    [super checkAccount:bank];
    
}


//카드만들기
-(void)makeCard:(Bank *)bank{
    
    NSLog(@"%@가 %@에서 카드를 만들었다", self.name, bank.name);
    
}

@end
