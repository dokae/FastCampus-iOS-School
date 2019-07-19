//
//  ViewController.m
//  170213 - 2 ViewController
//
//  Created by Park Jae Han on 2017. 2. 13..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)loadView {
    
    [super loadView];
    self.view.backgroundColor = [UIColor redColor];

    NSLog(@"1 loadView");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    

    UIView *box1 = [[UIView alloc] initWithFrame:CGRectMake(50, 50, 200, 200)];
    box1.backgroundColor = [UIColor grayColor];
    [self.view addSubview:box1];
    
    
    NSLog(@"1 viewDidLoad");

}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:NO];
    NSLog(@"1 viewWillAppear");
}

-(void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    NSLog(@"1 viewWillLayoutSubviews");
}

- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    NSLog(@"1 viewDidLayoutSubviews");
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:NO];
    NSLog(@"1 viewDidAppear");
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:NO];
    NSLog(@"1 viewWillDisappear");
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:NO];
    NSLog(@"1 viewDidDisappear");
}

- (void)dealloc
{
    NSLog(@"1 dealloc");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
