//
//  Calculator.m
//  170123 - 4 ShapeDimension
//
//  Created by 박재한 on 2017. 1. 23..
//  Copyright © 2017년 noName. All rights reserved.
//

#import "Calculator.h"
#import "Shape.h"

@implementation Calculator


//square
- (void)setSvalue:(CGFloat)s
{
    //[self setS:sValue];
    self.s = s;
}

- (CGFloat)squareArea
{
    CGFloat area = self.s * self.s;
    return area;
}

- (CGFloat)squarePerimeter
{
    CGFloat perimeter = self.s * 4;
    return perimeter;
}



//rectangle
- (void)setLvalue:(CGFloat)l setWvalue:(CGFloat)w
{
    self.l = l;
    self.w = w;
}

- (CGFloat)rectangleArea
{
    CGFloat area = self.l * self.w;
    return area;
}

- (CGFloat)rectanglePerimeter
{
    CGFloat perimeter = (2 * self.l) + (2 * self.w);
    return perimeter;
}



//circle
- (void)setRvalue:(CGFloat)r
{
    self.r = r;
}

- (CGFloat)circleArea
{
    CGFloat pi = 3.14;
    CGFloat area = pi * (self.r * self.r);
    return area;
}

- (CGFloat)circleCircumference
{
    CGFloat pi = 3.14;
    CGFloat circum = 2 * pi * self.r;
    return circum;
}



//triangle
- (void)setHvalue:(CGFloat)h setBvalue:(CGFloat)b
{
    self.h = h;
    self.b = b;
}

- (CGFloat)triangleArea
{
    CGFloat area = 1.0 / 2.0 * self.b * self.h;
    return area;
}
































@end
