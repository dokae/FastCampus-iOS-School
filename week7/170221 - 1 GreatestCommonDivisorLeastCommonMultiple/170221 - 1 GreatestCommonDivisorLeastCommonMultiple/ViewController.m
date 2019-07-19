//
//  ViewController.m
//  170221 - 1 GreatestCommonDivisorLeastCommonMultiple
//
//  Created by Park Jae Han on 2017. 2. 21..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UITextFieldDelegate>
@property UITextField *tf1;
@property UITextField *tf2;
@property UILabel *labelTitle;
@property UILabel *resultLabel;
@property UILabel *divisorLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSInteger viewWidth = self.view.frame.size.width;
    
    UITextField *tf1 = [[UITextField alloc] initWithFrame:CGRectMake(25, 50, viewWidth - 50, 50)];
    tf1.backgroundColor = [UIColor whiteColor];
    tf1.borderStyle = UITextBorderStyleLine;
    tf1.placeholder = @"num1";
    tf1.delegate = self;
    tf1.tag = 1;
    tf1.autocorrectionType = UITextAutocorrectionTypeNo;
    self.tf1 = tf1;
    [self.view addSubview:self.tf1];

    UITextField *tf2 = [[UITextField alloc] initWithFrame:CGRectMake(25, 120, viewWidth - 50, 50)];
    tf2.backgroundColor = [UIColor whiteColor];
    tf2.borderStyle = UITextBorderStyleLine;
    tf2.placeholder = @"num2";
    tf2.delegate = self;
    tf2.tag = 2;
    tf2.autocorrectionType = UITextAutocorrectionTypeNo;
    self.tf2 = tf2;
    [self.view addSubview:self.tf2];
    
    UILabel *labelTitle = [[UILabel alloc] initWithFrame:CGRectMake(25, 200, 50, 50)];
    labelTitle.text = @"결과:";
    self.labelTitle = labelTitle;
    [self.view addSubview:self.labelTitle];
    
    UILabel *resultLabel = [[UILabel alloc] initWithFrame:CGRectMake(90, 200, 200, 50)];
    self.resultLabel = resultLabel;
    [self.view addSubview:self.resultLabel];

}



- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    NSInteger num1 = [self.tf1.text integerValue];
    NSInteger num2 = [self.tf2.text integerValue];
    NSInteger result1 = 0;
    NSInteger result2 = 0;
    NSInteger count1 = 0;
    
    //유클리드 호제법
//    if (num1 > num2) {
//        
//        result = num1 % num2;
//        result = num2 % result;
//        
//    } else {
//        
//        result = num2 % num1;
//        result = num1 % result;
//    }
    
    //소인수분해 192 = 2^6 * 3, 72 = 2^3 * 3^2
    if (num1 > num2) {
        
        while (num1 % 2 == 0 && num2 % 2 == 0) {
            result1 = num1 / 2;
            result2 = num2 / 2;
            count1++;
        }
        
    }
    
    
    
//    NSLog(@"%ld", result);
    
//    self.resultLabel.text = [NSString stringWithFormat:@"%ld", resultValue];
    
    return YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
