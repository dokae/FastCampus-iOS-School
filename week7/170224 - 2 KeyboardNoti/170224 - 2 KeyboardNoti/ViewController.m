//
//  ViewController.m
//  170224 - 2 KeyboardNoti
//
//  Created by Park Jae Han on 2017. 2. 24..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UITextFieldDelegate>

@property (nonatomic,weak) UIView *toolbar;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UITextField *tf = [[UITextField alloc] initWithFrame:CGRectMake(40, 60, 100, 40)];
    tf.borderStyle = UITextBorderStyleLine;
    tf.delegate = self;
    [self.view addSubview:tf];
    
    UIView *toolbar = [[UIView alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height - 40, self.view.frame.size.width, 50)];
    toolbar.backgroundColor = [UIColor blueColor];
    [self.view addSubview:toolbar];
    self.toolbar = toolbar;
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardNoti:) name:UIKeyboardWillShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardHideNoti:) name:UIKeyboardWillHideNotification object:nil];
}


- (void)keyboardNoti:(NSNotification *)noti
{
    CGRect originFrame = self.toolbar.frame;
    CGSize keyboardSize = [[noti.userInfo objectForKey:UIKeyboardFrameBeginUserInfoKey] CGRectValue].size;
    [UIView animateWithDuration:1 animations:^{

        self.toolbar.frame = CGRectMake(originFrame.origin.x, originFrame.origin.y - keyboardSize.height, originFrame.size.width, originFrame.size.height);
    }];
}

- (void)keyboardHideNoti:(NSNotification *)noti
{
    CGRect originFrame = self.toolbar.frame;
    CGSize keyboardSize = [[noti.userInfo objectForKey:UIKeyboardFrameBeginUserInfoKey] CGRectValue].size;
    [UIView animateWithDuration:1 animations:^{
        
        self.toolbar.frame = CGRectMake(originFrame.origin.x, originFrame.origin.y + keyboardSize.height, originFrame.size.width, originFrame.size.height);
    }];

}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    
    return YES;
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
