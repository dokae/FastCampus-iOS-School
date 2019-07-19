//
//  SecViewController.m
//  bb
//
//  Created by Park Jae Han on 2017. 2. 24..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "SecViewController.h"

@interface SecViewController ()

@end

@implementation SecViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *a = [[UIButton alloc] initWithFrame:CGRectMake(50, 100, 100, 40)];
    [a setTitle:@"bbb" forState:UIControlStateNormal];
    [a setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [a addTarget:self action:@selector(btn) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:a];
}

- (void)btn
{
    SecViewController *svc = [[SecViewController alloc] init];
    [self.navigationController pushViewController:svc animated:YES];
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
