//
//  MainViewController.m
//  170315 - 2 NetworkExercise
//
//  Created by Park Jae Han on 2017. 3. 15..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "MainViewController.h"
#import "SignInViewController.h"
#import "DataCenter.h"

@interface MainViewController ()
@property (weak, nonatomic) IBOutlet UIButton *singInBtn;

@end

@implementation MainViewController


- (IBAction)didSelectedBtn:(UIButton *)sender {
    
    SignInViewController *signInVC = [self.storyboard instantiateViewControllerWithIdentifier:@"SignInViewController"];
    [self presentViewController:signInVC animated:YES completion:nil];

}

-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    //if처리 필
    if ([DataCenter sharedInstance].userToken == nil) {
        
        [self performSegueWithIdentifier:@"loginSegue" sender:self];
    }
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.


    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
