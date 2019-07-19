//
//  ViewController.m
//  170313 - 3 GCD
//
//  Created by Park Jae Han on 2017. 3. 13..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    dispatch_queue_t main_queue = dispatch_get_main_queue();
    dispatch_async (main_queue, ^{
        
        NSLog(@"a");
        NSLog(@"B");
        NSLog(@"C");
        
    });
    
    __weak ViewController *wself = self;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
