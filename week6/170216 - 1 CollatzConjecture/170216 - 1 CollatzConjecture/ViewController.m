//
//  ViewController.m
//  170216 - 1 CollatzConjecture
//
//  Created by Park Jae Han on 2017. 2. 16..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UITextFieldDelegate>
@property UITextField *tf;
@property UILabel *labelTitle;
@property UILabel *resultLabel;
@property UILabel *divisorLabel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSInteger viewWidth = self.view.frame.size.width;
    
    UITextField *tf = [[UITextField alloc] initWithFrame:CGRectMake(25, 50, viewWidth - 50, 50)];
    tf.backgroundColor = [UIColor whiteColor];
    tf.borderStyle = UITextBorderStyleLine;
    tf.delegate = self;
    tf.autocorrectionType = UITextAutocorrectionTypeNo;
    self.tf = tf;
    [self.view addSubview:self.tf];
    
    UILabel *labelTitle = [[UILabel alloc] initWithFrame:CGRectMake(25, 100, 50, 50)];
    labelTitle.text = @"결과:";
    self.labelTitle = labelTitle;
    [self.view addSubview:self.labelTitle];
    
    
    UILabel *resultLabel = [[UILabel alloc] initWithFrame:CGRectMake(90, 100, 200, 50)];
    self.resultLabel = resultLabel;
    [self.view addSubview:self.resultLabel];
    
    UILabel *divisorLabel = [[UILabel alloc] initWithFrame:CGRectMake(90, 180, 200, 50)];
    self.divisorLabel = divisorLabel;
    [self.view addSubview:self.divisorLabel];

    
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    
    //짝수면 2로 나누기
    //홀수면 *3 + 1
    //1이 될때까지 반복
    //500이 넘으면 -1 출력
    
    NSUInteger value = [textField.text integerValue];
    NSUInteger count = 0;
    
    while (value != 1) {
        
        if (count <= 500) {
            
            if (value % 2 == 0) {
                
                value /= 2;
                count++;
                
            } else {
                
                value = value * 3 + 1;
                count++;
            }
            
            self.resultLabel.text = [NSString stringWithFormat:@"%ld", count];
            
        } else {
        
            self.resultLabel.text = @"-1";
            break;
        }
    }
    
    return YES;
}






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
