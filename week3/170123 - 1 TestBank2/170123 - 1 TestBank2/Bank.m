//
//  Bank.m
//  170123 - 1 TestBank2
//
//  Created by 박재한 on 2017. 1. 23..
//  Copyright © 2017년 noName. All rights reserved.
//

#import "Bank.h"

@implementation Bank

- (void)changeLocation:(NSString *)newLocation
{
    NSLog(@"%@은행이 %@에서 %@로 이사했다", self.name, self.location, newLocation);
    


}


@end
