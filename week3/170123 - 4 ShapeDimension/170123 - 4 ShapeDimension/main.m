//
//  main.m
//  170123 - 4 ShapeDimension
//
//  Created by 박재한 on 2017. 1. 23..
//  Copyright © 2017년 noName. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Shape.h"
#import "Calculator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Calculator *square = [[Calculator alloc] init];
        [square setSvalue:2];
        NSLog(@"Square A = %.2f, P = %.2f", [square squareArea], [square squarePerimeter]);
    
        Calculator *rectangle = [[Calculator alloc] init];
        [rectangle setLvalue:3 setWvalue:6];
        NSLog(@"Rectangle A = %.2f, P = %.2f", [rectangle rectangleArea], [rectangle rectanglePerimeter]);
        
        Calculator *circle = [[Calculator alloc] init];
        [circle setRvalue:1];
        NSLog(@"Circle A = %.2f, C = %.2f", [circle circleArea], [circle circleCircumference]);
        
        Calculator *triangle = [[Calculator alloc] init];
        [triangle setHvalue:20 setBvalue:50];
        NSLog(@"Triangle A = %.2f", [triangle triangleArea]);
        
        
        
        
        
        
    }
    return 0;
}
