//
//  ViewController.m
//  170206 - 2 UIButton
//
//  Created by Park Jae Han on 2017. 2. 6..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "ViewController.h"
#import "Myview.h"

@interface ViewController ()

//@property UIButton *btn1;
//@property UIButton *btn2;
//@property UIButton *btn3;
@property UIButton *selectedBtn;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Myview *myview = [[Myview alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    [self.view addSubview:myview];
    
    //selected test
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn1.frame = CGRectMake(100, 100, 100, 30);
    btn1.backgroundColor = [UIColor grayColor];
    
    [btn1 setTitle:@"1번 버튼" forState:UIControlStateNormal];
    [btn1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn1 setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
    [btn1 addTarget:self action:@selector(didSelectedBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn1];
    
    //switching test
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn2.frame = CGRectMake(100, 300, 100, 30);
    btn2.backgroundColor = [UIColor grayColor];
    [btn2 setTitle:@"2번 버튼" forState:UIControlStateNormal];
    [btn2 setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
    [btn2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn2 addTarget:self action:@selector(switching:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn2];

    UIButton *btn3 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn3.frame = CGRectMake(250, 300, 100, 30);
    btn3.backgroundColor = [UIColor grayColor];
    [btn3 setTitle:@"2번 버튼" forState:UIControlStateNormal];
    [btn3 setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
    [btn3 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn3 addTarget:self action:@selector(switching:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn3];
    
}

//selected
- (void)didSelectedBtn:(UIButton *)sender{
    
    
    if (sender.isSelected) {

        sender.selected = NO;

    } else {
        
        sender.selected = YES;
   
    }
    
    
}


//switching test
- (void)switching:(UIButton *)sender{


    self.selectedBtn.selected = NO;
    
    if (sender.isSelected) {
        
        sender.selected = NO;
        
    } else {
        
        sender.selected = YES;
        
    }
    
    self.selectedBtn = sender;
    
}






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
