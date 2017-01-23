//
//  Calculator.m
//  170123 - 2 ClassCalculator
//
//  Created by 박재한 on 2017. 1. 23..
//  Copyright © 2017년 noName. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

//- (void)addMathScore:(NSInteger)mathScore addHistoryScore:(NSInteger)historyScore addKoreanScore:(NSInteger)koreanScore
//{
//    self.totalScore = mathScore + historyScore + koreanScore;
//    NSLog(@"수학 = %lu, 역사 = %lu, 국어 = %lu, 총점은 %lu", mathScore, historyScore, koreanScore, self.totalScore);
//}



- (void)seMath:(NSInteger)mathScore
{
    self.math = mathScore;
}

- (void)seHistory:(NSInteger)historyScore
{
    self.history = historyScore;
}

- (void)seKorean:(NSInteger)koreanScore
{
    self.korean = koreanScore;
}


- (NSInteger)calTotal
{
    self.totalScore = self.math + self.history + self.korean;
    
    return self.totalScore;
}


- (NSInteger)calAverage
{
    self.average = self.totalScore / 3;
//    NSLog(@"평균은 %lu", self.average);
    
    return self.average;
}



@end
