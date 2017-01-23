//
//  main.m
//  170123 - 2 ClassCalculator
//
//  Created by 박재한 on 2017. 1. 23..
//  Copyright © 2017년 noName. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Calculator *c1 = [[Calculator alloc] init];

        
//        [c1 addMathScore:80 addHistoryScore:90 addKoreanScore:100];
        [c1 seMath:80];
        [c1 seHistory:90];
        [c1 seKorean:100];
        
        NSLog(@"총점은 %lu", [c1 calTotal]);
        NSLog(@"평균은 %lu", [c1 calAverage]);
//        [c1 calTotal];
//        [c1 calAverage];
        
       
    }
    return 0;
}
