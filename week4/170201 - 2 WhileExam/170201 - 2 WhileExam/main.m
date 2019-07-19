//
//  main.m
//  170201 - 2 WhileExam
//
//  Created by 박재한 on 2017. 2. 1..
//  Copyright © 2017년 noname. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *temp = [Calculator findMultipleNum:5 maxRange:30];
        NSLog(@"%@", temp);
        
    }
    return 0;
}
