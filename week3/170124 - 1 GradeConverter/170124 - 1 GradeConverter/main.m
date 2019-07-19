//
//  main.m
//  170124 - 1 GradeConverter
//
//  Created by 박재한 on 2017. 1. 24..
//  Copyright © 2017년 noName. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IfStatement.h"
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        /*
        //첫번째
        NSUInteger score = 40;
                
        if ([IfStatement matchScore:score] == 1) {
            
            NSLog(@"%lu는 A이고 평점은 4.5입니다", score);
            
        }else if ([IfStatement matchScore:score] == 2) {
            
            NSLog(@"%lu는 B이고 평점은 4.0입니다", score);
        
        }else if ([IfStatement matchScore:score] == 3) {
            
            NSLog(@"%lu는 C이고 평점은 3.5입니다", score);
            
        }else if ([IfStatement matchScore:score] == 4) {
            
            NSLog(@"%lu는 D이고 평점은 3.0입니다", score);
            
        }else {

            NSLog(@"%lu는 F이고 평점은 2.5입니다", score);
        }
         */
  
        
        Person *p1 = [[Person alloc] initWithName:@"사람1"];
        p1.mathScore = 95;
        p1.subjectName = @"수학";
        
        //두번째
        //NSUInteger score = 85;
        
        if ([IfStatement matchScore:p1.mathScore] == 1) {
            
            NSLog(@"%@, %@, %lu는 A이고 평점은 %.1f입니다", p1.name, p1.subjectName, p1.mathScore, [IfStatement gradeToAverage:[IfStatement matchScore:p1.mathScore]]);
            
        }else if ([IfStatement matchScore:p1.mathScore] == 2) {
            
            NSLog(@"%lu는 B이고 평점은 %.1f입니다", p1.mathScore, [IfStatement gradeToAverage:[IfStatement matchScore:p1.mathScore]]);
            
        }else if ([IfStatement matchScore:p1.mathScore] == 3) {
            
            NSLog(@"%lu는 C이고 평점은 %.1f입니다", p1.mathScore, [IfStatement gradeToAverage:[IfStatement matchScore:p1.mathScore]]);
            
        }else if ([IfStatement matchScore:p1.mathScore] == 4) {
            
            NSLog(@"%lu는 D이고 평점은 %.1f입니다", p1.mathScore, [IfStatement gradeToAverage:[IfStatement matchScore:p1.mathScore]]);
            
        }else {
            
            NSLog(@"%lu는 F이고 평점은 %.1f입니다", p1.mathScore, [IfStatement gradeToAverage:[IfStatement matchScore:p1.mathScore]]);
        }
        

        
        
    }
    return 0;
}
