//
//  ChangeUnit.h
//  170123 - 5 ClassMethod
//
//  Created by 박재한 on 2017. 1. 23..
//  Copyright © 2017년 noName. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ChangeUnit : NSObject

+ (CGFloat)inchForCm:(CGFloat)cm;
+ (CGFloat)cmForInch:(CGFloat)inch;
+ (CGFloat)m2ForPyung:(CGFloat)pyung;
+ (CGFloat)pyungForM2:(CGFloat)m2;
+ (CGFloat)fForC:(CGFloat)c;
+ (CGFloat)cForF:(CGFloat)f;
+ (NSUInteger)setHH:(NSUInteger)hh setMM:(NSUInteger)mm setSS:(NSUInteger)ss;



@end
