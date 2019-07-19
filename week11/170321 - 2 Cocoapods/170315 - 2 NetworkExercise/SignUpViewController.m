//
//  SignUpViewController.m
//  170315 - 2 NetworkExercise
//
//  Created by Park Jae Han on 2017. 3. 15..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "SignUpViewController.h"
#import "DataCenter.h"
#import "MainViewController.h"
#import "NetworkModule.h"

@interface SignUpViewController ()
<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *idField;
@property (weak, nonatomic) IBOutlet UITextField *pwField;
@property (weak, nonatomic) IBOutlet UITextField *verifyPwField;

@end

@implementation SignUpViewController


- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    if (textField.tag == 1000) {
        
        [self.pwField becomeFirstResponder];
        
    } else if (textField.tag == 2000) {
        
        [self.verifyPwField becomeFirstResponder];
        
    } else if (textField.tag == 3000) {
        
        [self.verifyPwField resignFirstResponder];
        
        if (self.pwField.text != self.verifyPwField.text) {
            
            [self noAlert];
        } else {
            
            [self signUp];
        }
    }

    return YES;
}


- (IBAction)didSelectedBtn:(UIButton *)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (void)signUp {
    
  [[DataCenter sharedInstance] signUpUserID:self.idField.text userPW:self.pwField.text userVPW:self.verifyPwField.text completionBlock:^(BOOL isSuccess) {
      
      if (isSuccess) {

          NSLog(@"signUpVC::isSucees:true");

      } else {
          
          NSLog(@"signUpVC::isSucess::else");
      }
  }];
}



//------------------ 얼럿


- (void)okAlert {
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"가입완료" message:@"가입완료됨" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        [self dismissViewControllerAnimated:YES completion:nil];
        
    }];
    
    [alertController addAction:okAction];
    [self presentViewController:alertController animated:YES completion:nil];
}


- (void)noAlert {
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"비번확인" message:@"동일한 비번입력" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        [self.verifyPwField becomeFirstResponder];
    }];
    
    [alertController addAction:okAction];
    [self presentViewController:alertController animated:YES completion:nil];
}


- (void)emptyAlert {
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"입력하시오" message:@"입력하시오" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        [self.verifyPwField becomeFirstResponder];
    }];
    
    [alertController addAction:okAction];
    [self presentViewController:alertController animated:YES completion:nil];
}





- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.idField becomeFirstResponder];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
