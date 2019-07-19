//
//  main.m
//  170131 - 1 isYourBirthday
//
//  Created by 박재한 on 2017. 1. 31..
//  Copyright © 2017년 noName. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Designer.h"
#import "Developer.h"
#import "Planner.h"
#import "Toolbox.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Person *person = [[Person alloc] initWithName:@"퍼거슨"];
        person.birthday = 170131;
        [person settingJob:@"무직"];
        [person think:@"아무생각"];
        
        Developer *developer = [[Developer alloc] initWithName:@"개발러"];
        [developer settingJob:@"개발자"];
        [developer think:@"프로그래밍"];
        
        
        
//        if ([person isBirthday] == 1)
//        {
//            NSLog(@"오늘은 %@, %@의 생일입니다", person.name, person.job);
//        }
//        else {
//            NSLog(@"오늘은 %@, %@의 생일이 아니네요", person.name, person.job);
//        }

        switch ((NSUInteger)[Toolbox checkDeveloper:developer]) {
            case 1:
                NSLog(@"개발자가 맞네요");
                break;
                
            default:
                NSLog(@"개발자가 아님");
                break;
        }
    
        
        
        if ([Toolbox checkDeveloper:developer] == 1) {
            NSLog(@"개발자임");
        } else {
            NSLog(@"아님");
        }

    }
    return 0;
}
