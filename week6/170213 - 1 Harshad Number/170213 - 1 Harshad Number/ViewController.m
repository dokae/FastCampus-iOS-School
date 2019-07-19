//
//  ViewController.m
//  170213 - 1 Harshad Number
//
//  Created by Park Jae Han on 2017. 2. 13..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

<UITextFieldDelegate>
@property UITextField *tf;
@property UILabel *labelTitle;
@property UILabel *resultLabel;
//@property UILabel *label2;
//@property UILabel *label3;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
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

//    UILabel *label2 = [[UILabel alloc] initWithFrame:CGRectMake(20, 250, 200, 50)];
//    label2.text = @"나누기값";
//    self.label2 = label2;
//    [self.view addSubview:self.label2];
//    
//    UILabel *label3 = [[UILabel alloc] initWithFrame:CGRectMake(20, 350, 200, 50)];
//    label3.text = @"나머지값";
//    self.label3 = label3;
//    [self.view addSubview:self.label3];

}


- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    
    NSInteger addedNum = 0;
    
    for (NSInteger i = 0; i < [textField.text length]; i++) {
        
        NSString *seperateNum = [NSString stringWithFormat:@"%c", [textField.text characterAtIndex:i]];
        addedNum = addedNum + [seperateNum integerValue];
        
    }

    if ([textField.text integerValue] % addedNum == 0) {
        
        self.resultLabel.text = @"Harshad Number!";
//        self.label2.text = [NSString stringWithFormat:@"%ld", addedNum];
        
    } else {
        
        self.resultLabel.text = @"No!!";
//        self.label2.text = [NSString stringWithFormat:@"%ld", addedNum];
//        self.label3.text = [NSString stringWithFormat:@"%ld", ([textField.text integerValue] % addedNum)];
    }
    
    return YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
