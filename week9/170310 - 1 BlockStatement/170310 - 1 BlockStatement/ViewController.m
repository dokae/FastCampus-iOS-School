//
//  ViewController.m
//  170310 - 1 BlockStatement
//
//  Created by Park Jae Han on 2017. 3. 10..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "ViewController.h"
#import "BlockView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //1
    double (^multiply)(double, double) = ^(double firstNum, double secNum) {
        return firstNum * secNum;
    };
    
    double result = multiply(2,4);
    NSLog(@"1. result = %f", result);

    //2
    [self testMethod];
    [self testMethod2];
    
    
    BlockView *temp = [[BlockView alloc] initWithAction:^(void){
        return @"test";
    }];
    //3
//    [self testMethod3:^(NSString *name) {
////        NSLog(@"innter pram %@", name);
//        return @"ahahahahahaha";
//    }];
    
}


//- (IBAction)selectedBtn:(UIButton *)sender {
//    
//    self.printLB.text =
//    
//}


- (void)testMethod3:(void (^)(NSString *name))param
{
    NSLog(@"before start block");
    param(@"in param");
    NSLog(@"after block");
}




- (void)testMethod {
    
    NSInteger anInteger = 42;
    
    void (^testBlock)(void) = ^{
        
        NSLog(@"2. integer is %li", anInteger);
    };

    anInteger = 84;
    
    testBlock();
    NSLog(@"3. %li", anInteger);
}


- (void)testMethod2 {
    
    __block NSInteger anInt = 42;
    
    void (^testBlock)(void) = ^{
        NSLog(@"4.int is %li", anInt);
        anInt = 100;
    };
    
    testBlock();
    NSLog(@"5. %li", anInt);
    
}











- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
