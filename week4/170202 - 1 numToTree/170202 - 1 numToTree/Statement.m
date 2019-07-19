 //
//  Statement.m
//  170202 - 1 numToTree
//
//  Created by 박재한 on 2017. 2. 2..
//  Copyright © 2017년 noname. All rights reserved.
//

#import "Statement.h"

@implementation Statement

+ (void)numToTree:(NSInteger)value
{
    
    for (NSInteger i = 1; i <= value; i++)
    {

        for  (NSInteger j = 1; j <= i; j++)
        {
            printf("*");
        }

        printf("\n");
    }
    
}


+ (void)numToTree2:(NSInteger)value
{
    
    for (NSInteger i = value; i >= 1; i--)
    {
        
        for  (NSInteger j = 1; j <= i; j++)
        {
            printf("*");
        }
        
        printf("\n");
    }
    
}


+ (void)numToTree3:(NSInteger)value
{
    
    for (NSInteger i = 1; i <= value; i++)
    {
        
        for (NSInteger k = value; k > i; k--)
        {
            printf(" ");
        }
        
        
        for  (NSInteger j = 1; j <= i; j++)
        {
            printf("*");
        }
        
        printf("\n");
    }
    
}
@end
