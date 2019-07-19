//
//  SignUpViewController.m
//  170207 - 2 LoginPage
//
//  Created by Park Jae Han on 2017. 2. 20..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "SignUpViewController.h"
#import "DataCenter.h"

@interface SignUpViewController ()
<UITextFieldDelegate>
@property (nonatomic, weak) UITextField *inputIDField;
@property (nonatomic, weak) UITextField *inputPWField;
@property (nonatomic, weak) UITextField *inputCheckPWField;

@end

@implementation SignUpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    [self.navigationController setNavigationBarHidden:NO animated:YES];
    
    CGSize viewSize = self.view.frame.size;
    self.view.backgroundColor = [UIColor colorWithWhite:250/255.0 alpha:1];
    
    UITextField *inputIDField = [[UITextField alloc] initWithFrame:CGRectMake(30, 200, viewSize.width - 60, 50)];
    inputIDField.placeholder = @"ID를 입력해주세요";
    inputIDField.borderStyle = UITextBorderStyleRoundedRect;
    inputIDField.backgroundColor = [UIColor whiteColor];
    inputIDField.textColor = [UIColor blackColor];
    inputIDField.delegate = self;
    inputIDField.tag = 100;
    self.inputIDField = inputIDField;
    [self.view addSubview:self.inputIDField];
    
    UITextField *inputPWField = [[UITextField alloc] initWithFrame:CGRectMake(30, 260, viewSize.width - 60, 50)];
    inputPWField.placeholder = @"패스워드를 입력해주세요";
    inputPWField.borderStyle = UITextBorderStyleRoundedRect;
    inputPWField.backgroundColor = [UIColor whiteColor];
    inputPWField.textColor = [UIColor blackColor];
    inputPWField.delegate = self;
    inputPWField.tag = 200;
    self.inputPWField = inputPWField;
    [self.view addSubview:self.inputPWField];

    UITextField *inputCheckPWField = [[UITextField alloc] initWithFrame:CGRectMake(30, 320, viewSize.width - 60, 50)];
    inputCheckPWField.placeholder = @"패스워드를 다시 입력해주세요";
    inputCheckPWField.borderStyle = UITextBorderStyleRoundedRect;
    inputCheckPWField.backgroundColor = [UIColor whiteColor];
    inputCheckPWField.textColor = [UIColor blackColor];
    inputCheckPWField.delegate = self;
    inputCheckPWField.tag = 300;
    self.inputCheckPWField = inputCheckPWField;
    [self.view addSubview:self.inputCheckPWField];
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if (textField.tag == 100) {
        
        [self.inputPWField becomeFirstResponder];
        [DataCenter sharedInstance].userID = textField.text;
        [[NSUserDefaults standardUserDefaults] setObject:[DataCenter sharedInstance].userID forKey:@"userID"];
        NSLog(@"%@", [[NSUserDefaults standardUserDefaults] objectForKey:@"userID"]);
        
    } if (textField.tag == 200) {
        
        [self.inputPWField becomeFirstResponder];
        [DataCenter sharedInstance].userPW = textField.text;
        [[NSUserDefaults standardUserDefaults] setObject:[DataCenter sharedInstance].userPW forKey:@"userPW"];
        NSLog(@"%@", [[NSUserDefaults standardUserDefaults] objectForKey:@"userPW"]);
    
    } if (textField.tag == 300) {
        
        [self.inputCheckPWField resignFirstResponder];
        
        
        
        
        
        
    }

    return YES;
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
