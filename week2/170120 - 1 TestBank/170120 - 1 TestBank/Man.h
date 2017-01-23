//
//  Man.h
//  170120 - 1 TestBank
//
//  Created by 박재한 on 2017. 1. 20..
//  Copyright © 2017년 noName. All rights reserved.
//

#import "Person.h"

@interface Man : Person

//사람의 입금 재정의
- (void)depositMoney:(NSUInteger)money bank:(Bank *)bank;

//사람의 조회 재정의
- (void)checkAccount:(Bank *)bank;

//카드만들기
-(void)makeCard:(Bank *)bank;

@end
