//
//  Calculator.h
//  170123 - 2 ClassCalculator
//
//  Created by 박재한 on 2017. 1. 23..
//  Copyright © 2017년 noName. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

@property NSInteger math;
@property NSInteger history;
@property NSInteger korean;
@property NSInteger totalScore;
@property NSInteger average;

//- (void)addMathScore:(NSInteger)mathScore addHistoryScore:(NSInteger)historyScore addKoreanScore:(NSInteger)koreanScore;

- (void)seMath:(NSInteger)mathScore;
- (void)seHistory:(NSInteger)historyScore;
- (void)seKorean:(NSInteger)koreanScore;

- (NSInteger)calTotal;
- (NSInteger)calAverage;



@end
