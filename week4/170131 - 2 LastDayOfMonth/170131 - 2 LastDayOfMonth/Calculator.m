//
//  Calculator.m
//  170131 - 2 LastDayOfMonth
//
//  Created by 박재한 on 2017. 1. 31..
//  Copyright © 2017년 noName. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

+ (NSInteger)lastDayOfMonth:(NSInteger)value
{
    NSInteger result = 0;
    
    switch (value) {
        case 1:
        case 3:
        case 5:
        case 7:
        case 8:
        case 10:
        case 12:
            result = 31;
            break;
        
        case 2:
            result = 28;
            break;
        
        default:
            result = 30;
            break;
            
        }
 
    NSLog(@"%lu월은 %lu일", value, result);
    return result;
}




@end
