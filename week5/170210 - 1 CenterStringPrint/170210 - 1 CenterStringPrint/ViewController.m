//
//  ViewController.m
//  170210 - 1 CenterStringPrint
//
//  Created by Park Jae Han on 2017. 2. 10..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UITextFieldDelegate>
@property UITextField *tf;
@property UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.view.backgroundColor = [UIColor grayColor];
    
    self.tf = [[UITextField alloc] initWithFrame:CGRectMake(20, 50, 200, 50)];
    self.tf.backgroundColor = [UIColor whiteColor];
    self.tf.delegate = self;
    self.tf.autocorrectionType = UITextAutocorrectionTypeNo;
    [self.view addSubview:self.tf];
    
    self.label = [[UILabel alloc] initWithFrame:CGRectMake(20, 150, 200, 50)];
    self.label.textColor = [UIColor blackColor];
    [self.view addSubview:self.label];
    
    

    
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField {

    
//    //2번째 방법
//    NSInteger inputLength = [textField.text length];
//    
//    if (inputLength % 2 == 0) {
//
//        self.label.text = [textField.text substringWithRange:NSMakeRange(inputLength / 2 - 1, 2)];
//
//    } else {
//        
//        self.label.text = [textField.text substringWithRange:NSMakeRange(inputLength / 2, 1)];
//    }
    
    
    
    
    
    
//    1번째 방법
    NSMutableArray *characters = [[NSMutableArray alloc] initWithCapacity:[textField.text length]];
 
    for (NSInteger i = 0; i < [textField.text length]; i++) {

        NSString *ichar  = [NSString stringWithFormat:@"%c", [textField.text characterAtIndex:i]];
        [characters addObject:ichar];
    }
    
    //가운데 문자 출력
    NSString *resultList = @"";
    NSInteger arrayCount = characters.count;
    
    if (arrayCount % 2 != 0) {
        
        resultList = [characters objectAtIndex: arrayCount / 2];
    
        } else {
    
            resultList = [resultList stringByAppendingString:[characters objectAtIndex:arrayCount / 2 - 1]];
            resultList = [resultList stringByAppendingString:[characters objectAtIndex:arrayCount / 2]];
        }

    self.label.text = resultList;
    return YES;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
