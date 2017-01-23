//
//  main.m
//  170123 - 1 TestBank2
//
//  Created by 박재한 on 2017. 1. 23..
//  Copyright © 2017년 noName. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Bank.h"
#import "Man.h"
#import "Woman.m"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Person *p1 = [[Person alloc] init];
        p1.name = @"내";
        
        Bank *b1 = [[Bank alloc] init];
        b1.name = @"우리";
        b1.location = @"여기";
        
        Man *m1 = [[Man alloc] init];
        m1.name = @"남자";
        
        Woman *w1 = [[Woman alloc] init];
        w1.name = @"여자";
        
        [p1 depositMoney:100 bankName:b1];
        [p1 viewAsset:b1];
        [b1 changeLocation:@"제주"];
        
        [m1 transper:w1 money:22];
        
        
    }
    return 0;
}
