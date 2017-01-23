//
//  main.m
//  170120 - 1 TestBank
//
//  Created by 박재한 on 2017. 1. 20..
//  Copyright © 2017년 noName. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Bank.h"
#import "Man.h"
#import "Woman.h"


int main(int argc, const char * argv[]) {
    
    Person *p1 = [[Person alloc] init];
    p1.name = @"사람1";
    p1.asset = 10000;
    
    Person *p2 = [[Person alloc] init];
    p2.name = @"사람2";
    p2.asset = 50000;
    
   
    Bank *b1 = [[Bank alloc] init];
    b1.name = @"우리은행";
    b1.location = @"여기";
    
    Man *m1 = [[Man alloc] init];
    m1.name = @"남자";
    
    Woman *w1 = [[Woman alloc] init];
    w1.name = @"여자";
    
//    [p1 depositMoney:500 bank:b1];
//    [p1 checkAccount:b1];
//    
//    [b1 changeLocation:@"저기"];
//    
//    [b1 transperMoney:200 toPerson:p2 fromPerson:p1];
//    
//    [m1 depositMoney:1000 bank:b1];
//    [m1 checkAccount:b1];
//    [m1 makeCard:b1];
//    
//    [w1 clearAccount:b1];
    
    [m1 depositMoney:700 bank:b1];
    [w1 depositMoney:500 bank:b1];
    
    [m1 checkAccount:b1];
    [w1 checkAccount:b1];
    
    [b1 changeLocation:@"제주"];
    
    [b1 transperMoney:1000 toPerson:w1 fromPerson:m1];
    [b1 transperMoney:5000 toPerson:m1 fromPerson:w1];
    
    
    
    
    
    return 0;
}
