//
//  ViewController.m
//  170323 - 1 Segue
//
//  Created by Park Jae Han on 2017. 3. 23..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self performSegueWithIdentifier:@"manual" sender:self];
}

- (IBAction)backCompleted:(UIStoryboardSegue *)sender {
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
