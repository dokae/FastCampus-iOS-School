//
//  SecondViewController.m
//  170213 - 2 ViewController
//
//  Created by Park Jae Han on 2017. 2. 13..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)loadView {
    
    [super loadView];
    self.view.backgroundColor = [UIColor greenColor];

    NSLog(@"2 loadView");
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIView *box2 = [[UIView alloc] initWithFrame:CGRectMake(100, 250, 200, 200)];
    box2.backgroundColor = [UIColor blueColor];
    [self.view addSubview:box2];
    
    
    NSLog(@"2 viewDidLoad");
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:NO];
    NSLog(@"2 viewWillAppear");
}

-(void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    NSLog(@"2 viewWillLayoutSubviews");
}

- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    NSLog(@"2 viewDidLayoutSubviews");
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:NO];
    NSLog(@"2 viewDidAppear");
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:NO];
    NSLog(@"2 viewWillDisappear");
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:NO];
    NSLog(@"2 viewDidDisappear");
}

- (void)dealloc
{
    NSLog(@"2 dealloc");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
