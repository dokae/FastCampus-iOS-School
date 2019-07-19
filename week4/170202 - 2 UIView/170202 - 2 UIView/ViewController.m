//
//  ViewController.m
//  170202 - 2 UIView
//
//  Created by 박재한 on 2017. 2. 2..
//  Copyright © 2017년 noname. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    //1번
//    UIView *firstView = [[UIView alloc] initWithFrame:CGRectMake(15, 15, 345, 100)];
//    firstView.backgroundColor = [UIColor yellowColor];
//    [self.view addSubview:firstView];
//    
//    UIView *secondView = [[UIView alloc] init];
//    secondView.frame = CGRectMake(15, 552, self.view.frame.size.width - 30, 100);
//    [secondView setBackgroundColor:[UIColor greenColor]];
//    [self.view addSubview:secondView];
    
    
    //2번
    UIView *firstView = [[UIView alloc] initWithFrame:CGRectMake(self.view.frame.origin.x + 15, self.view.frame.origin.y + 15, self.view.frame.size.width - 30, self.view.frame.size.height - 30)];
    [firstView setBackgroundColor:[UIColor greenColor]];
    [self.view addSubview:firstView];
    
    UIView *secondView = [[UIView alloc] initWithFrame:CGRectMake(15, 15, firstView.frame.size.width - 30, firstView.frame.size.height - 30)];
    [secondView setBackgroundColor:[UIColor yellowColor]];
    [firstView addSubview:secondView];

    UIView *thirdView = [[UIView alloc] initWithFrame:CGRectMake(15, 15, secondView.frame.size.width - 30, secondView.frame.size.height - 30)];
    [thirdView setBackgroundColor:[UIColor grayColor]];
    [secondView addSubview:thirdView];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




















/*
 UIView *myView = [[UIView alloc] initWithFrame:CGRectMake(50, 50, 300, 300)];
 myView.backgroundColor = [UIColor blueColor];
 myView.clipsToBounds = YES; //트리밍
 [self.view addSubview:myView];
 
 UIView *subView = [[UIView alloc] init];
 subView.frame = CGRectMake(100, 30, 50, 50);
 [subView setBackgroundColor:[UIColor redColor]];
 [myView addSubview:subView];
 */

@end
