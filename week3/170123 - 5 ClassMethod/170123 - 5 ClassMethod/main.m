//
//  main.m
//  170123 - 5 ClassMethod
//
//  Created by 박재한 on 2017. 1. 23..
//  Copyright © 2017년 noName. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ChangeUnit.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"인치는 %.2f", [ChangeUnit inchForCm:5]);
        NSLog(@"센치는 %.2f", [ChangeUnit cmForInch:1.97]);
        NSLog(@"m2는 %.2f", [ChangeUnit m2ForPyung:50]);
        NSLog(@"평은 %.2f", [ChangeUnit pyungForM2:165.29]);
        NSLog(@"화씨는 %.1f", [ChangeUnit fForC:20]);
        NSLog(@"섭씨는 %.1f", [ChangeUnit cForF:68]);
        
        NSLog(@"초는 %lu", [ChangeUnit setHH:10 setMM:00 setSS:00]);
        
    }
    return 0;
}
