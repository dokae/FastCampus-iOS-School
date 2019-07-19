//
//  SecondViewController.m
//  170220 - 1 VCExercise
//
//  Created by Park Jae Han on 2017. 2. 20..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    UIButton *backBtn = [[UIButton alloc] initWithFrame:CGRectMake(30, 100, 100, 50)];
//    [backBtn addTarget:self action:@selector(onSelectedBtn:) forControlEvents:UIControlEventTouchUpInside];
//    [backBtn setTitle:@"back" forState:UIControlStateNormal];
//    [backBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
//    [backBtn setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
//    [self.view addSubview:backBtn];
}


- (void)onSelectedBtn:(UIButton *)sender
{
//    [self dismissViewControllerAnimated:YES completion:nil];
    [self.navigationController popToRootViewControllerAnimated:YES];
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
