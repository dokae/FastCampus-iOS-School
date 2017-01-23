//
//  ViewController.m
//  FirstApp
//
//  Created by 박재한 on 2017. 1. 16..
//  Copyright © 2017년 noName. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    
    NSLog(@"브레이크 포인트 전");
    
    NSLog(@"브레이크 포인트 후");
    
    NSLog(@"중간 공백......");
    
    NSLog(@"다음 브레이크 포인트 전");
    
    NSLog(@"다음 브레이크 포인트 후");
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




- (IBAction)btnAction0
{
  
    [self.titleLB0 setText:@"꽝!"];
    
}

- (IBAction)btnAction1
{
    
    [self.titleLB0 setText:@"꽝꽝!"];
    
}

- (IBAction)btnAction2
{
    
    [self.titleLB0 setText:@"당첨!"];
    
}

- (IBAction)btnAction3
{
    
    [self.titleLB0 setText:@"꽝꽝꽝!"];
    
}

// bottom


- (IBAction)btnAction4
{
    
    [self.titleLB1 setText:@"1!"];
    
}

- (IBAction)btnAction5
{
    
    [self.titleLB2 setText:@"2!"];
    
}
- (IBAction)btnAction6
{
    
    [self.titleLB3 setText:@"3!"];
    
}
- (IBAction)btnAction7
{
    
    [self.titleLB4 setText:@"4!"];
    
}






@end
