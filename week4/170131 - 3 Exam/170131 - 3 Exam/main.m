//
//  main.m
//  170131 - 3 Exam
//
//  Created by Park Jae Han on 2017. 1. 31..
//  Copyright © 2017년 noname. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //1번
        [Calculator absoluteNum:10000];
        [Calculator absoluteNum:-10000];

        
        //2번
        [Calculator roundNum:3.134];
        [Calculator roundNum:3.4552];

        
        //3번
        [Calculator calcuOP:@"+" num1:10 num2:3];
        [Calculator calcuOP:@"-" num1:10 num2:3];
        [Calculator calcuOP:@"-" num1:3 num2:10];
    
        //2-2번
        [Calculator roundNum2:3.4552];
        
    }
    return 0;
}
