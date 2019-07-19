//
//  ViewController.m
//  170206 - 4 UITextField
//
//  Created by Park Jae Han on 2017. 2. 6..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UITextFieldDelegate>

@property UITextField *tf;
@property UITextField *tf2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor grayColor];
    self.tf = [[UITextField alloc] initWithFrame:CGRectMake(40, 120, 200, 35)];
    self.tf.borderStyle = UITextBorderStyleRoundedRect;
    self.tf.placeholder = @"여기 입력해줘요";
    self.tf.delegate = self;
    self.tf.tag = 1000;
    self.tf.textColor = [UIColor blackColor];
    [self.view addSubview:self.tf];

    self.tf2 = [[UITextField alloc] initWithFrame:CGRectMake(40, 200, 200, 35)];
    self.tf2.borderStyle = UITextBorderStyleRoundedRect;
    self.tf2.placeholder = @"여기 입력해줘요";
    self.tf2.delegate = self;
    self.tf2.tag = 2000;
    self.tf2.textColor = [UIColor blackColor];
    [self.view addSubview:self.tf2];
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
   
    if (textField.tag == 1000) {

        [self.tf2 becomeFirstResponder];
    
    } else if (textField.tag == 2000)
    {

        [self.tf2 resignFirstResponder];
    
    }else{
    
        NSLog(@"에러");
    }
    
    return YES;
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
