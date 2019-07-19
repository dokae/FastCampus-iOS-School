//
//  AddContactViewController.m
//  170303 - 1 Plist
//
//  Created by Park Jae Han on 2017. 3. 3..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "AddContactViewController.h"
#import "DataCenter.h"

@interface AddContactViewController ()
<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *nameTF;
@property (weak, nonatomic) IBOutlet UITextField *numberTF;

@end

@implementation AddContactViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    if (textField.tag == 1) {
        
        [self.numberTF becomeFirstResponder];
    
    } else {
        
        [[DataCenter sharedInstance] saveWithName:self.nameTF.text number:self.numberTF.text];
        [self.numberTF resignFirstResponder];
    }

    return YES;
}

- (IBAction)didTappedBtn:(UIButton *)sender {

    [[DataCenter sharedInstance] saveWithName:self.nameTF.text number:self.numberTF.text];
}


@end
