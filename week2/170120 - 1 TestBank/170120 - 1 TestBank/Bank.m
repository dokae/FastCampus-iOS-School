//
//  Bank.m
//  170120 - 1 TestBank
//
//  Created by 박재한 on 2017. 1. 20..
//  Copyright © 2017년 noName. All rights reserved.
//

#import "Bank.h"
#import "Person.h"


@implementation Bank


//은행의 주소변경
- (void)changeLocation:(NSString *)newLocation {
    
    NSLog(@"%@이(가) %@에서 %@로 주소를 변경하였습니다", self.name, self.location, newLocation);
    
}


//은행의 이체
- (void)transperMoney:(NSInteger)money toPerson:(Person *)toPerson fromPerson:(Person *)fromPerson{
    
    NSLog(@"%@이(가) %@에게 %@으로 %lu를 이체하였습니다", fromPerson.name, toPerson.name, self.name, money);
    
}

@end
