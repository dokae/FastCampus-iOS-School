//
//  main.m
//  170227 - 1 PrimeNumber
//
//  Created by Park Jae Han on 2017. 2. 27..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        //입력받은 N까지 소수의 개수구하기
        
        NSInteger inputNum = 10;
        NSInteger i;
        NSInteger j;
        
        for (i = 2; i <= inputNum; i++) {
            
            for (j = 2; j < i; j++) {
                
                if (i % j == 0) {
                    break;
                }}

            if (i == j) {
                NSLog(@"%ld", i);
            }
            
        }
        
        
    
        
    }
    return 0;
}
