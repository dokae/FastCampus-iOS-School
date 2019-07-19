//
//  CusTabBar.m
//  170321 - 1 TabbarStoryboard
//
//  Created by Park Jae Han on 2017. 3. 21..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "CusTabBar.h"

@interface CusTabBar ()

@end

@implementation CusTabBar

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.tabBar.frame =CGRectMake(0,44,self.view.frame.size.width,50);

    
    UITabBarItem *item0 = [self.tabBar.items objectAtIndex:0];
    UITabBarItem *item1 = [self.tabBar.items objectAtIndex:1];
//    UITabBarItem *item2 = [self.tabBar.items objectAtIndex:2];
    
    item0.title = @"custab1";
    item1.title = @"tab2cus";
//    item2.title = @"3tabcus";
    
    
    
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
