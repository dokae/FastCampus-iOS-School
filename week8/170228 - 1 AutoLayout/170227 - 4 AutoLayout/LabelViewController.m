//
//  LabelViewController.m
//  170227 - 4 AutoLayout
//
//  Created by Park Jae Han on 2017. 2. 28..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "LabelViewController.h"

@interface LabelViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation LabelViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.label.text = @"askdjflkadjfasldjfk\naskdjflkadjfasldjfk\naskdjflkadjfasldjfk\naskdjflkadjfasldjfk\naskdjflkadjfasldjfk\naskdjflkadjfasldjfk\naskdjflkadjfasldjfk\naskdjflkadjfasldjfk\naskdjflkadjfasldjfk\naskdjflkadjfasldjfk\naskdjflkadjfasldjfk\naskdjflkadjfasldjfk\naskdjflkadjfasldjfk\naskdjflkadjfasldjfk\n";
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
