//
//  ViewController.m
//  170221 - 2 NaviController
//
//  Created by Park Jae Han on 2017. 2. 21..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "ViewController.h"
#import "SecViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    self.navigationItem.title = @"MY VC";
//    [self.navigationController.navigationBar setBarTintColor:[UIColor colorWithWhite:1 alpha:0]];
//    
//    UIButton *back = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 30, 30)];
//    [back setBackgroundImage:[UIImage imageNamed:@"back.ico"] forState:UIControlStateNormal];
//    [back addTarget:self action:@selector(backBtnClick:) forControlEvents:UIControlEventTouchUpInside];
//    
//    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithCustomView:back];
//    self.navigationItem.leftBarButtonItem = item;
    
    self.view.backgroundColor = [UIColor yellowColor];
    
    
    //커스텀 네비바
    self.navigationItem.title = @"aaaa";
//    self.navigationItem.prompt = @"bbbb";
    [self.navigationController.navigationBar setTintColor:[UIColor greenColor]];
    [self.navigationController.navigationBar setBarTintColor:[UIColor colorWithRed:0/255 green:0/255 blue:0/255 alpha:0]];
    
    UIButton *back = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
    [back setBackgroundImage:[UIImage imageNamed:@"back.ico"] forState:UIControlStateNormal];
    [back addTarget:self action:@selector(backBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithCustomView:back];
    self.navigationItem.rightBarButtonItem = item;
    
    UIView *title = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 34)];
    title.backgroundColor = [UIColor blackColor];
    [self.view addSubview:title];
    self.navigationItem.titleView = title;
    
    UISegmentedControl *segControl = [[UISegmentedControl alloc] initWithItems:[NSArray arrayWithObjects:@"1", @"2", @"3", nil]];
    [segControl addTarget:self action:@selector(segmentAction:) forControlEvents:UIControlEventValueChanged];
    segControl.frame = CGRectMake(0, 0, 90, 35);
    [segControl setTitle:@"ccc" forSegmentAtIndex:0];

//    segControl.seg
    
    UIBarButtonItem *segBarItem = [[UIBarButtonItem alloc] initWithCustomView:segControl];
    self.navigationItem.leftBarButtonItem = segBarItem;
    
    
//    //탭바
//    ViewController *vc1 = [[ViewController alloc] init];
//    ViewController *vc2 = [[ViewController alloc] init];
//    UITabBarController *tabbar = [[UITabBarController alloc] init];
//    tabbar.viewControllers = @[vc1,vc2];
//    
//    UITabBarItem *item1 = [[UITabBarItem alloc] initWithTitle:@"aaaa" image:[UIImage imageNamed:@""] selectedImage:[UIImage imageNamed:@""]];
//    
//    vc1.tabBarItem = item1;
    
    
    
    
    
}

- (void)segmentAction:(UISegmentedControl *)sender
{
    
    if (sender.selectedSegmentIndex == 0) {
        NSLog(@"click");
    }
}


- (void)backBtnClick:(UIButton *)sender
{
    NSLog(@"click");
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    SecViewController *sv = [storyboard instantiateViewControllerWithIdentifier:@"SecViewController"];
    [self.navigationController pushViewController:sv animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
