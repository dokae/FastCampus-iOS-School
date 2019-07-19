//
//  ViewController.m
//  170313 - 2 Thread
//
//  Created by Park Jae Han on 2017. 3. 13..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *mainLB;
@property (weak, nonatomic) IBOutlet UIButton *startBtn;
@property (weak, nonatomic) IBOutlet UIButton *stopBtn;
@property NSThread *thread;
@property NSInteger i;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.stopBtn.hidden = YES;
    self.i = 0;
}

- (IBAction)selectedStartBtn:(UIButton *)sender {
    
    self.thread = [[NSThread alloc] initWithTarget:self selector:@selector(threadAction) object:nil];
    
    [self.thread start];
    
    self.startBtn.hidden = YES;
    self.stopBtn.hidden = NO;
}

- (void)threadAction {
    
    
    while (![self.thread isCancelled]) {
        
        sleep(0.5);
        [self performSelectorOnMainThread:@selector(changeText:) withObject:[NSString stringWithFormat:@"%ld", self.i++] waitUntilDone:YES];
    }
}

- (void)changeText:(NSString *)str {
    
    self.mainLB.text = str;
}



- (IBAction)selectedStopBtn:(id)sender {
    
    [self.thread cancel];
    
    self.startBtn.hidden = NO;
    self.stopBtn.hidden = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
