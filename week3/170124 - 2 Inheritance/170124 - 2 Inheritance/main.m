//
//  main.m
//  170124 - 2 Inheritance
//
//  Created by 박재한 on 2017. 1. 24..
//  Copyright © 2017년 noName. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"
#import "Junior.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Person *p1 = [[Person alloc] init];
        
        NSLog(@"%@",[p1 test:@"51"]);
        
    }
    return 0;
}
