//
//  Woman.m
//  170120 - 1 TestBank
//
//  Created by 박재한 on 2017. 1. 20..
//  Copyright © 2017년 noName. All rights reserved.
//

#import "Woman.h"
#import "Bank.h"

@implementation Woman

- (void)clearAccount:(Bank *)bank{
    
    NSLog(@"%@가 %@에서 통장정리를 하였습니다", self.name, bank.name);
    
}

@end
