//
//  main.m
//  170119 - 3 Inheritance
//
//  Created by 박재한 on 2017. 1. 19..
//  Copyright © 2017년 noName. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Human.h"
#import "Ork.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        Human *h1 = [[Human alloc] init];
        h1.name = @"휴먼";
        h1.hp = 100;
        h1.ap = 10;
        
        Ork *o1 = [[Ork alloc] init];
        o1.name = @"오크";
        o1.hp = 500;
        o1.ap = 5;

        [h1 baseHP];
        [h1 jumpTo:o1];
        [o1 jumpTo:h1];
        [h1 atkTo:o1];
        [o1 atkTo:h1];
        
        [h1 initWithName:@"%@" gender:@"%@" age:@"%@"];
        //NSLog(@"%@, %@", h1.name, h1.gender);
        
        
    }
    return 0;





}

