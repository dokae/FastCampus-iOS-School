//
//  Person.h
//  170119 - PersonStudent
//
//  Created by 박재한 on 2017. 1. 19..
//  Copyright © 2017년 noName. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property NSString *name;
@property NSUInteger age;
@property NSString *eat;

- (NSString *)eat:(NSString *)food;

@end
