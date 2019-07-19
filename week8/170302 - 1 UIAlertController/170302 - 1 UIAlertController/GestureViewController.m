//
//  GestureViewController.m
//  170302 - 1 UIAlertController
//
//  Created by Park Jae Han on 2017. 3. 2..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "GestureViewController.h"

@interface GestureViewController ()
<UIGestureRecognizerDelegate>
@property (weak, nonatomic) IBOutlet UILabel *countLB;
@property (weak, nonatomic) IBOutlet UILabel *locationXY;

@end

@implementation GestureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch {
    
    self.countLB.text = [NSString stringWithFormat:@"%ld", touch.tapCount];
    self.locationXY.text = [NSString stringWithFormat:@"%lf, %lf", [touch locationInView:self.view].x, [touch locationInView:self.view].y];
    
    
    
    return YES;
}

- (IBAction)tapped:(UITapGestureRecognizer *)sender {
    
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
