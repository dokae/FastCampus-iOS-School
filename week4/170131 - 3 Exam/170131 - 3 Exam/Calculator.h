//
//  Calculator.h
//  170131 - 3 Exam
//
//  Created by Park Jae Han on 2017. 1. 31..
//  Copyright © 2017년 noname. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

//1번
+ (NSInteger)absoluteNum:(NSInteger)value;

//2번
+ (CGFloat)roundNum:(CGFloat)value;

//2-2번
+ (CGFloat)roundNum2:(CGFloat)value;


//3번
+ (NSInteger)calcuOP:(NSString *)opValue num1:(NSInteger)num1Value num2:(NSInteger)num2Value;


@end
