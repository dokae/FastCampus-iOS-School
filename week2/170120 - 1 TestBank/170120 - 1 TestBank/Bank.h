//
//  Bank.h
//  170120 - 1 TestBank
//
//  Created by 박재한 on 2017. 1. 20..
//  Copyright © 2017년 noName. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Person;

@interface Bank : NSObject

@property NSString *name;
@property NSString *location;


//은행의 주소변경
- (void)changeLocation:(NSString *)newLocation;

//은행의 이체
- (void)transperMoney:(NSInteger)money toPerson:(Person *)toPerson fromPerson:(Person *)fromPerson;



@end
