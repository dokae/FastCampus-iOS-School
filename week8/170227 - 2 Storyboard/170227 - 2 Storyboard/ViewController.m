//
//  ViewController.m
//  170227 - 2 Storyboard
//
//  Created by Park Jae Han on 2017. 2. 27..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *testLB2;
@property (weak, nonatomic) IBOutlet UITextField *textTF;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    self.testView.backgroundColor = [UIColor blueColor];
    
}

- (IBAction)btnAction:(id)sender
{
    self.textLb.text = @"버튼클릭";
}


- (IBAction)btn2:(id)sender {
}

- (IBAction)testuitf:(id)sender {
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
