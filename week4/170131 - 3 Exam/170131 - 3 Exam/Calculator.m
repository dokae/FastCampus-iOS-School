//
//  Calculator.m
//  170131 - 3 Exam
//
//  Created by Park Jae Han on 2017. 1. 31..
//  Copyright © 2017년 noname. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

//1번
+ (NSInteger)absoluteNum:(NSInteger)value
{
    
    if (value < 0)
    {
        value = -value;
    }

    NSLog(@"절대값은 %lu", value);
    return value;
}


//2번
+ (CGFloat)roundNum:(CGFloat)value
{

    CGFloat roundResult = (NSInteger)((value + 0.005) * 100);
    roundResult /= 100;

    NSLog(@"%f의 소수점3자리 반올림은 %f", value, roundResult);
    return roundResult;
}

//2-2번
//소수점 마지막자리 반올림하기 3.134    3.4552
+ (CGFloat)roundNum2:(CGFloat)value
{
    NSInteger result = (CGFloat)(value * 10000);
    CGFloat temp = (CGFloat)(result % 10);
    
    NSLog(@"%lu, %f", result, temp);
    return result;
}





//3번
+ (NSInteger)calcuOP:(NSString *)opValue num1:(NSInteger)num1Value num2:(NSInteger)num2Value
{
    NSInteger result = 0;
    
    if ([opValue isEqualToString:@"+"])
    {
        result = num1Value + num2Value;
        NSLog(@"%lu + %lu = %lu", num1Value, num2Value, result);

    
    } else if ([opValue isEqualToString:@"-"])
    {
        if(num1Value - num2Value < 0) //(num1Value < num2Value)
        {
            //swap(임시변수 만들어서 스왑)
            //NSInteger temp = 0;
            //temp = num1Value;
            //num1Value = num2Value;
            //num2Value = num1Value;

            result = num2Value - num1Value;
            NSLog(@"%lu - %lu = %lu", num1Value, num2Value, result);
        
        } else
        {
            result = num1Value - num2Value;
            NSLog(@"%lu - %lu = %lu", num1Value, num2Value, result);

        }
    }
    
    return result;

}
@end
