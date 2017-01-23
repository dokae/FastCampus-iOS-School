//
//  Student.h
//  170119 - PersonStudent
//
//  Created by 박재한 on 2017. 1. 19..
//  Copyright © 2017년 noName. All rights reserved.
//

#import "Person.h"

@interface Student : Person

@property NSUInteger grade;
@property NSString *study;

- (NSString *)study;

@end
