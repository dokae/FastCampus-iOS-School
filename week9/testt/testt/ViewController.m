//
//  ViewController.m
//  testt
//
//  Created by Park Jae Han on 2017. 3. 9..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "ViewController.h"
#import "SettingViewController.h"
@interface ViewController ()

@property SettingViewController *settingVC;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    SettingViewController *settingVC = [self.storyboard instantiateViewControllerWithIdentifier:@"SettingViewController"];
    
    [self addChildViewController:settingVC];
    [self.view addSubview:settingVC.view];
    
    settingVC.view.frame = CGRectMake(-375, 0, 375, self.view.frame.size.height);
    self.settingVC = settingVC;
    
    //    UIButton *closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //    closeBtn.frame = CGRectMake(0, 40, 40, 40);
    //    [closeBtn setImage:[UIImage imageNamed:@"close_btn"] forState:UIControlStateNormal];
    //    [closeBtn addTarget:self action:@selector(didSelectedCloseBtn:) forControlEvents:UIControlEventTouchUpInside];
    //    closeBtn.hidden = YES;
    //    closeBtn.highlighted = NO;
    //    closeBtn.showsTouchWhenHighlighted = NO;
    //    [self.view addSubview:closeBtn];
    //    self.closeBtn = closeBtn;
    
}

- (IBAction)didSelectedBtn:(UIButton *)sender {
    
    [UIView animateWithDuration:0.3 animations:^{
        
        self.view.frame = CGRectMake(self.view.frame.size.width - 95, 0, self.view.frame.size.width, self.view.frame.size.height);
    }];
    
    //    self.closeBtn.hidden = NO;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
