//
//  SignInViewController.m
//  170315 - 2 NetworkExercise
//
//  Created by Park Jae Han on 2017. 3. 15..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "SignInViewController.h"
#import "DataCenter.h"
#import "NetworkModule.h"

@interface SignInViewController ()
<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *idField;
@property (weak, nonatomic) IBOutlet UITextField *pwField;

@end

@implementation SignInViewController

/*
 
 로그인------
 id입력
 pw입력
 리턴키 or 버튼 누름
 id,pw 확인
 맞으면 로그인
 틀리면 팝업
 
 */


- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    if (textField.tag == 100) {
        
        [self.pwField becomeFirstResponder];
    } else {
        
        [self.pwField resignFirstResponder];
        [self signIn];
        
    }

    return YES;
}


- (IBAction)didSelectedBtn:(UIButton *)sender {
    
    if (sender.tag == 10) { //signin btn
        
        [self signIn];
    
    } else if (sender.tag == 30) { //logout btn
    
        [self signOut];
    } else if (sender.tag == 40) { //cancel btn
        
        [self dismissViewControllerAnimated:YES completion:nil];
    }
}


- (void)signIn {

    [[DataCenter sharedInstance] signInUserID:self.idField.text userPW:self.pwField.text completionBlock:^(BOOL isSuccess) {
        
        if (isSuccess) {
            
            [self okAlert];
            NSLog(@"signinVC::isSuccess::true");
        
        } else {
            
            [self noAlert];
            NSLog(@"signinVC::isSuccess::else");
        }
    }];
}


- (void)signOut {
    
    [[DataCenter sharedInstance] signOutUserToken:[DataCenter sharedInstance].userToken completionBlock:^(BOOL isSuccess) {
        
        if (isSuccess) {
            
            NSLog(@"signinVC::isSuccess::true");
            
        } else {
            
            NSLog(@"signinVC::isSuccess::else");
        }
    }];
}







//------------------ 얼럿


- (void)okAlert {
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"로긴성공" message:@"성공" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        [self dismissViewControllerAnimated:YES completion:nil];
        
    }];
    
    [alertController addAction:okAction];
    [self presentViewController:alertController animated:YES completion:nil];
}


- (void)logoutAlert {
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"로그아웃" message:@"성공" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    
    [alertController addAction:okAction];
    [self presentViewController:alertController animated:YES completion:nil];
}


- (void)noAlert {
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"다시확인" message:@"다시쳐" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        [self.idField becomeFirstResponder];
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
