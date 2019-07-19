//
//  ViewController.m
//  170313 - 1 SignInSignUp
//
//  Created by Park Jae Han on 2017. 3. 13..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *idTextField;
@property (weak, nonatomic) IBOutlet UITextField *pwTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.idTextField setValue:[UIColor colorWithWhite:255/255.0 alpha:0.5] forKeyPath:@"_placeholderLabel.textColor"];
    [self.pwTextField setValue:[UIColor colorWithWhite:255/255.0 alpha:0.5] forKeyPath:@"_placeholderLabel.textColor"];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
