//
//  main.m
//  170119 - PersonStudent
//
//  Created by 박재한 on 2017. 1. 19..
//  Copyright © 2017년 noName. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"
#import "UniversityStudent.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Person *p1 = [[Person alloc] init];
        // p1.name = @"퍼슨";
        
        Student *s1 = [[Student alloc] init];
        UniversityStudent *u1 = [[UniversityStudent alloc] init];
        
        [p1 eat:@"밥"];
        [s1 eat];
        [u1 eat];
    
        
        
    }
    return 0;
}
