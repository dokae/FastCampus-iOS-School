//
//  main.m
//  170118-human-vs-ork
//
//  Created by 박재한 on 2017. 1. 18..
//  Copyright © 2017년 noName. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameCharacter.h"
// #import "Human.h"
// #import "Ork.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//        Human *h1 = [[Human alloc] init];
//        h1.hp = 100;
//        h1.ap = 5;
//        h1.def = 5;
//        h1.name = @"휴머머먼";
    
//        Ork *o1 = [[Ork alloc] init];
//        o1.hp = 1000;
//        o1.ap = 10;
//        o1.def = 1;
//        o1.name = @"오크크크";
        
        /*
        [h1 attackTo:o1];
        [o1 attackTo:h1];
        [h1 attackTo:o1];
        [o1 attackTo:h1];
         */
        
//        [h1 jumpTo:o1];
//        [o1 jumpTo:h1];
        GameCharacter *gc = [[GameCharacter alloc] init];
        NSLog(@"%@", gc.name);
        
    }
    return 0;
}
