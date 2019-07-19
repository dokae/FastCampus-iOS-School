//
//  EpisodeViewController.m
//  170221 - 4 SettingScreen
//
//  Created by Park Jae Han on 2017. 2. 23..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "EpisodeViewController.h"

@interface EpisodeViewController ()
<UITextFieldDelegate>
@property(nonatomic, weak) UITextField *tf;

@end

@implementation EpisodeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationItem.title = @"에피소드 제한";
    self.view.backgroundColor = [UIColor colorWithWhite:240/255.0 alpha:1];
    
    CGSize selfFrame = self.view.frame.size;
    
    UITextField *tf = [[UITextField alloc] initWithFrame:CGRectMake(25, 120, selfFrame.width - 50, 200)];
    tf.backgroundColor = [UIColor whiteColor];
    tf.borderStyle = UITextBorderStyleRoundedRect;
    tf.placeholder = @"입력해주세요";
    tf.contentVerticalAlignment = UIControlContentVerticalAlignmentTop;
    tf.delegate = self;
    self.tf = tf;
    [self.view addSubview:self.tf];
    
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0, selfFrame.height - 70, selfFrame.width, 70)];
    [btn setTitle:@"입력" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor colorWithRed:115/255.0 green:200/255.0 blue:125/255.0 alpha:1]];
    [btn addTarget:self action:@selector(didSelectedBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
}


-(void)didSelectedBtn:(UIButton *)sender
{
    if (self.tf.isEditing == YES) {
        
        [self.tf resignFirstResponder];
        
    }
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    
    [self.tf resignFirstResponder];
    
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
