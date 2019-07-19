//
//  Calculator.m
//  170201 - 1 MultiplicationTable
//
//  Created by 박재한 on 2017. 2. 1..
//  Copyright © 2017년 noname. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

+ (void)multipl:(NSInteger)value
{
    
    //while문
//    NSInteger count = 1;
//    NSInteger result = 0;
//    
//    while (count < 10) {
//        result = value * count;
//        NSLog(@"%lu X %lu = %lu", value, count, result);
//        ++count;
//    }
    
    //for문
    for (NSInteger count = 1; count < 10; count++)
    {
        NSInteger result = value * count;
        NSLog(@"%lu X %lu = %lu", value, count, result);
    }
}


+ (void)multiplX:(NSInteger)valueX Y:(NSInteger)valueY
{
    //while문
//    NSInteger y, result;
//    y = 1;
//    
//    while (y <= valueY) {
//        result = valueX * y;
//        NSLog(@"%lu X %lu = %lu", valueX, y, result);
//        ++y;
//    }

    //for문
    for (NSInteger y = 1; y <= valueY; y++ )
    {
        NSInteger result = valueX * y;
        NSLog(@"%lu X %lu = %lu", valueX, y, result);
    }

}


@end
