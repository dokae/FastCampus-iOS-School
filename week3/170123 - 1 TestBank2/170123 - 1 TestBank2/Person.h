//
//  Person.h
//  170123 - 1 TestBank2
//
//  Created by 박재한 on 2017. 1. 23..
//  Copyright © 2017년 noName. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Bank;

@interface Person : NSObject

@property NSString *name;
@property int asset;

- (void)depositMoney:(int)money bankName:(Bank *)bank;
- (void)viewAsset:(Bank *)bank;
- (void)transper:(Person *)toPerson money:(int)money;



@end
