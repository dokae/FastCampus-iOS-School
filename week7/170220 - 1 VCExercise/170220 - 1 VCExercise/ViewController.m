//
//  ViewController.m
//  170220 - 1 VCExercise
//
//  Created by Park Jae Han on 2017. 2. 20..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
//#import "XecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *nextBtn = [[UIButton alloc] initWithFrame:CGRectMake(30, 100, 100, 50)];
    [nextBtn addTarget:self action:@selector(onSelectedBtn:) forControlEvents:UIControlEventTouchUpInside];
    [nextBtn setTitle:@"next" forState:UIControlStateNormal];
    [nextBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [nextBtn setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    [self.view addSubview:nextBtn];
    
    
}


- (void)onSelectedBtn:(UIButton *)sender
{
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
//        ViewController *rootVC = [storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
//        UINavigationController *naviVC = [[UINavigationController alloc] initWithRootViewController:rootVC];
    
    
    
        SecondViewController *sVC = [storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"];
        [self.navigationController pushViewController:sVC animated:YES];
}



/* 뷰컨트롤러
- (void)onSelectedBtn:(UIButton *)sender
{
//    //스토리보드 객체만들기
//    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
//    
//    //뷰컨트롤러 객체 만들기
//    SecondViewController *sVC = [storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"];
//    
//    //페이지전환
//    [self presentViewController:sVC animated:YES completion:nil];
    
    
    //Xib뷰컨트롤러 객체 만들기
    XecondViewController *xVC = [[XecondViewController alloc] initWithNibName:@"XecondViewController" bundle:[NSBundle mainBundle]];
//    xVC.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    
    //페이지전환
    [self presentViewController:xVC animated:YES completion:nil];
}
*/













- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
