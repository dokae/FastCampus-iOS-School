//
//  Toolbox.m
//  170131 - 1 isYourBirthday
//
//  Created by 박재한 on 2017. 1. 31..
//  Copyright © 2017년 noName. All rights reserved.
//

#import "Toolbox.h"
#import "Person.h"

@implementation Toolbox

+ (bool)checkDeveloper:(Person *)value
{
    
    
    if ([value.job isEqualToString:@"개발자"])
    {
        return YES;
    } else {
    return NO;
    }
}


@end
