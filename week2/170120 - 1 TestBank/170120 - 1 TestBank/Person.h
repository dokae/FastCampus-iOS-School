//
//  Person.h
//  170120 - 1 TestBank
//
//  Created by 박재한 on 2017. 1. 20..
//  Copyright © 2017년 noName. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Bank;

@interface Person : NSObject

@property NSString *name;
@property NSInteger asset;


//사람의 입금
- (void)depositMoney:(NSUInteger)money bank:(Bank *)bank;

//사람의 조회
- (void)checkAccount:(Bank *)bank;




@end
