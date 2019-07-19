//
//  ViewController.m
//  170310 - SideMenu
//
//  Created by Park Jae Han on 2017. 3. 10..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "ViewController.h"
#import "MyViewController.h"

@interface ViewController ()
@property MyViewController *myVC;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    MyViewController *myVC = [self.storyboard instantiateViewControllerWithIdentifier:@"MyViewController"];
    myVC.view.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    [self addChildViewController:myVC];
    [self.view addSubview:myVC.view];
    self.myVC = myVC;
    
    
}

- (IBAction)touchedBtn:(UIButton *)sender {
    
    if (sender.tag == 1) {
        
        NSLog(@"btn1");
        [UIView animateWithDuration:0.3 animations:^{
            
            self.myVC.view.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
        }];
    } else {
        NSLog(@"btn2");
    }
    
    
    
//    [self removeFromParentViewController];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
