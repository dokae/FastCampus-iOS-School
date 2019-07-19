//
//  ViewController.m
//  170215 - 1 DivisorSum
//
//  Created by Park Jae Han on 2017. 2. 15..
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

    NSInteger inputValue = [textField.text integerValue];
    NSInteger resultValue = 0;
    NSString *divisor = @"";
    
    for (NSInteger i = 1; i <= inputValue; i++) {
        
        if (inputValue % i == 0) {
            
            divisor = [divisor stringByAppendingFormat:@"%@ + ", [NSString stringWithFormat:@"%ld", i]];
            resultValue += i;
        }
    }
    
    self.resultLabel.text = [NSString stringWithFormat:@"%ld", resultValue];
    self.divisorLabel.text = divisor;

    return YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
