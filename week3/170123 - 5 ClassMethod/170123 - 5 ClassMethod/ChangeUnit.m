//
//  ChangeUnit.m
//  170123 - 5 ClassMethod
//
//  Created by 박재한 on 2017. 1. 23..
//  Copyright © 2017년 noName. All rights reserved.
//

#import "ChangeUnit.h"

@implementation ChangeUnit

// inch to cm
+ (CGFloat)inchForCm:(CGFloat)cm
{
    return cm / 2.54;
}


// cm to inch
+ (CGFloat)cmForInch:(CGFloat)inch
{
    return inch * 2.54;
}


// m2 to 평
+ (CGFloat)m2ForPyung:(CGFloat)pyung
{
    return pyung * 3.3058;
}

// 평 to m2
+ (CGFloat)pyungForM2:(CGFloat)m2
{
    return m2 / 3.3058;
}

/*
 [화씨를 섭씨로 변환 공식]
 (화씨온도 - 32) ÷ 1.8 = 섭씨온도

 [섭씨를 화씨로 변환 공식]
 (섭씨온도 × 1.8) + 32 = 화씨온도
 */

// f to c
+ (CGFloat)fForC:(CGFloat)c
{
    return (c * 1.8) + 32;
}

// c to f
+ (CGFloat)cForF:(CGFloat)f
{
    return (f - 32) / 1.8;
}

// hhmmss to s
+ (NSUInteger)setHH:(NSUInteger)hh setMM:(NSUInteger)mm setSS:(NSUInteger)ss
{
    return (hh * 60 * 60) + (mm * 60) + ss;
}


@end
