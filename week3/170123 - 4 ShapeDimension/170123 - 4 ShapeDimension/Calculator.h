//
//  Calculator.h
//  170123 - 4 ShapeDimension
//
//  Created by 박재한 on 2017. 1. 23..
//  Copyright © 2017년 noName. All rights reserved.
//

#import "Shape.h"

@interface Calculator : Shape


//square
- (void)setSvalue:(CGFloat)s;
- (CGFloat)squareArea;
- (CGFloat)squarePerimeter;

//rectangle
- (void)setLvalue:(CGFloat)l setWvalue:(CGFloat)w;
- (CGFloat)rectangleArea;
- (CGFloat)rectanglePerimeter;

//circle
- (void)setRvalue:(CGFloat)r;
- (CGFloat)circleArea;
- (CGFloat)circleCircumference;


//triangle
- (void)setHvalue:(CGFloat)h setBvalue:(CGFloat)b;
- (CGFloat)triangleArea;




@end
