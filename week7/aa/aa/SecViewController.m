//
//  SecViewController.m
//  aa
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
    
    UILabel *a = [[UILabel alloc] initWithFrame:CGRectMake(10, 200, 100, 50)];
    a.text = @"aaa";
    a.textColor = [UIColor blackColor];
    [self.view addSubview:a];
    
    
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
