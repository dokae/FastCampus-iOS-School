//
//  Human.m
//  170119 - 3 Inheritance
//
//  Created by 박재한 on 2017. 1. 19..
//  Copyright © 2017년 noName. All rights reserved.
//

#import "Human.h"


@implementation Human

- (void)jumpTo:(GameCharacter *)someCharacter
{
    
    // [super jumpTo:someCharacter];
     NSLog(@"%@에게 높이높이높이 점프", someCharacter.name);
}

@end
