//
//  ViewController.m
//  170206 - 5 UITextField
//
//  Created by Park Jae Han on 2017. 2. 6..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UITextFieldDelegate>

@property UILabel *label;
@property UITextField *tf;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.tf = [[UITextField alloc] initWithFrame:CGRectMake(50, 100, 200, 40)];
    self.tf.borderStyle = UITextBorderStyleLine;
    self.tf.placeholder = @"입력..";
    self.tf.textColor = [UIColor blackColor];
    self.tf.backgroundColor = [UIColor grayColor];
    self.tf.delegate = self;
    [self.tf setClearsOnBeginEditing:YES];
    [self.view addSubview:self.tf];
    

    
    self.label = [[UILabel alloc] initWithFrame:CGRectMake(50, 200, 200, 40)];
    self.label.textColor = [UIColor blackColor];
    self.label.text = @"여기";
    [self.view addSubview:self.label];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(260, 100, 50, 40);
    [btn setTitle:@"버튼" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(didSelectedBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
   
    
    
    UIButton *btnClear = [UIButton buttonWithType:UIButtonTypeCustom];
    btnClear.frame = CGRectMake(210, 150, 50, 40);
    [btnClear setTitle:@"지우기" forState:UIControlStateNormal];
    [btnClear setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btnClear addTarget:self action:@selector(clear) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnClear];
    
    
}

- (BOOL)clear
{
    self.tf.text = [NSString stringWithFormat:@""];
    return YES;
}



-(void)didSelectedBtn:(UIButton *)sender
{
    if (self.tf.isEditing == YES) {

        self.label.text = self.tf.text;
        [self.tf resignFirstResponder];
        
    }
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField
{

    self.label.text = textField.text;
    [self.tf resignFirstResponder];
    
    return YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
