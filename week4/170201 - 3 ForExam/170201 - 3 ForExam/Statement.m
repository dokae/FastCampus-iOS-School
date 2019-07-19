//
//  Statement.m
//  170201 - 3 ForExam
//
//  Created by 박재한 on 2017. 2. 1..
//  Copyright © 2017년 noname. All rights reserved.
//

#import "Statement.h"

@implementation Statement

+ (void)factorial:(NSInteger)value
{
    NSInteger result = 1;
    
    for (NSInteger i = 1; i <= value; i++)
    {
        result *= i;
    }
    
    NSLog(@"%lui = %lu", value, result);

}


//피보나치
+ (void)fibonacci:(NSInteger)value
{
    NSInteger a, b, c;
    a = 0;
    b = 1;
    
    for (NSInteger i = 1; i <= value; i++)
    {
        c = a + b;
        a = b;
        b = c;
 
        NSLog(@"%lu", b);
    }
    
    
}

@end
