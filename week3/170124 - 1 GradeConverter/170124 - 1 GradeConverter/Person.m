//
//  Person.m
//  170124 - 1 GradeConverter
//
//  Created by 박재한 on 2017. 1. 24..
//  Copyright © 2017년 noName. All rights reserved.
//

#import "Person.h"


@implementation Person

- (instancetype)initWithName:(NSString *)personName
{
    self = [super init];
    if (self) {
        
        self.name = personName;
                
    }
    return self;
}



@end
