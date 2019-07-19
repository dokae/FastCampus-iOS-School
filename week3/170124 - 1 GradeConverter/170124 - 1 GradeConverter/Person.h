//
//  Person.h
//  170124 - 1 GradeConverter
//
//  Created by 박재한 on 2017. 1. 24..
//  Copyright © 2017년 noName. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property NSString *name;
@property NSString *subjectName;
@property NSUInteger mathScore;

- (instancetype)initWithName:(NSString *)personName;


@end
