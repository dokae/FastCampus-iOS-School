//
//  IfStatement.m
//  170124 - 1 GradeConverter
//
//  Created by 박재한 on 2017. 1. 24..
//  Copyright © 2017년 noName. All rights reserved.
//

#import "IfStatement.h"

@implementation IfStatement


//첫번째
+ (NSUInteger)matchScore:(NSUInteger)score
{
    NSUInteger gradeNum;
    
    if (score <= 100 && score >= 91) {
    
        gradeNum = 1;
    
    }else if (score <= 90 && score >=81 ){
    
        gradeNum = 2;
    
    }else if (score <= 80 && score >=71 ){
    
        gradeNum = 3;
    
    }else if (score <= 70 && score >=61 ){
  
        gradeNum = 4;
    
    }else {
    
        gradeNum = 5;
    
    }
    
    return gradeNum;
    
}


//두번째
+ (CGFloat)gradeToAverage:(NSUInteger)grade
{
    CGFloat average;
    
    if (grade == 1) {
        
        average = 4.5;
    
    }else if (grade == 2) {
    
        average = 4.0;
    
    }else if (grade == 3) {
    
        average = 3.5;
    
    }else if (grade == 4) {
    
        average = 3.0;
    
    }else if (grade == 5) {
      
        average = 2.5;
    
    }
    
    return average;
}



@end
