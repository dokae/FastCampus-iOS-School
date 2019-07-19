//
//  ViewController.m
//  170302 - 1 UIAlertController
//
//  Created by Park Jae Han on 2017. 3. 2..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "ViewController.h"
#import "SecViewController.h"

@interface ViewController ()
<UIGestureRecognizerDelegate>




@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    UITapGestureRecognizer *tapGesture;
    tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap:)];
    tapGesture.delegate = self;
    tapGesture.numberOfTapsRequired = 1;
    
    
    [self.view addGestureRecognizer:tapGesture];
    
}

- (void)handleTap:(UITapGestureRecognizer *)gesture
{

}




- (IBAction)alertBtn:(id)sender {
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"aa" message:@"bb" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *okBtn = [UIAlertAction actionWithTitle:@"ok" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"okbtn");
    }];
    
    UIAlertAction *cancelBtn = [UIAlertAction actionWithTitle:@"cancel" style:UIAlertActionStyleCancel handler:nil];
    
    [alertController addAction:okBtn];
    [alertController addAction:cancelBtn];
    
    [self presentViewController:alertController animated:YES completion:nil];
}


- (IBAction)acsheetBtn:(UIButton *)sender {
    
    UIAlertController *actionController = [UIAlertController alertControllerWithTitle:@"aaa" message:@"bbb" preferredStyle:UIAlertControllerStyleActionSheet];
    
    UIAlertAction *okBtn = [UIAlertAction actionWithTitle:@"ok" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"action");
    }];
    
    UIAlertAction *cancelBtn = [UIAlertAction actionWithTitle:@"cancel" style:UIAlertActionStyleCancel handler:nil];
    
    [actionController addAction:okBtn];
    [actionController addAction:cancelBtn];
    
    [self presentViewController:actionController animated:YES completion:nil];
    
    
    
    
}











- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
