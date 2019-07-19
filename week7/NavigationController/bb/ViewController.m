//
//  ViewController.m
//  bb
//
//  Created by Park Jae Han on 2017. 2. 24..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "ViewController.h"
#import "SecViewController.h"

@interface ViewController ()
@property SecViewController *svc;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.svc = [[SecViewController alloc] init];
    
    UIButton *a = [[UIButton alloc] initWithFrame:CGRectMake(50, 100, 100, 40)];
    [a setTitle:@"aaa" forState:UIControlStateNormal];
    [a setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [a addTarget:self action:@selector(btn) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:a];
    
    
}

- (void)btn
{
    
    [self.navigationController pushViewController:self.svc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
