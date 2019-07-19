//
//  Calculator.m
//  170201 - 2 WhileExam
//
//  Created by 박재한 on 2017. 2. 1..
//  Copyright © 2017년 noname. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

+ (NSString *)findMultipleNum:(NSInteger)multiple maxRange:(NSInteger)range
{
    NSInteger index = 1;
    NSString *resultStr = @"start:";
    
    while (index <= range) {
        
        if(index % multiple == 0)
        {
            NSString *findNumStr = [NSString stringWithFormat:@"%lu ", index];
            resultStr = [resultStr stringByAppendingString:findNumStr];
            
        }
        
        ++index;
        
    }
    
    return resultStr;
    
}

@end
