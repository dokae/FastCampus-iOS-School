//
//  MyViewController.m
//  170310 - SideMenu
//
//  Created by Park Jae Han on 2017. 3. 10..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)touchedBtn:(id)sender {
    
    [UIView animateWithDuration:0.3 animations:^{
        
        self.view.frame = CGRectMake(self.view.frame.size.width - 95, 0, self.view.frame.size.width, self.view.frame.size.height);
    }];
    NSLog(@"aaa");
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
