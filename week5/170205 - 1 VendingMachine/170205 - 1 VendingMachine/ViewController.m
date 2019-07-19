//
//  ViewController.m
//  170205 - 1 VendingMachine
//
//  Created by Park Jae Han on 2017. 2. 5..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property NSInteger asset;
@property UILabel *assetLabel;
@property NSInteger currentAsset;
@property UILabel *currentAssetDisplay;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    //self.view
    NSInteger wrapperX = self.view.frame.origin.x;
    NSInteger wrapperY = self.view.frame.origin.y;
    NSInteger wrapperW = self.view.frame.size.width;
    NSInteger wrapperH = self.view.frame.size.height;
    [self.view setBackgroundColor:[UIColor colorWithRed:234/255.0 green:236/255.0 blue:239/255.0 alpha:1]];

    
    
    //statusView
    UIView *statusView = [[UIView alloc] initWithFrame:CGRectMake(wrapperX, wrapperY, wrapperW, 20)];
    [self.view addSubview:statusView];
    NSInteger statusViewH = statusView.frame.size.height;
    
    
    
    //titleView
    UILabel *titleView = [[UILabel alloc] initWithFrame:CGRectMake(wrapperX, statusViewH + 5, wrapperW, 90)];
    [titleView setText:@"Pokemon Gogogo"];
    [titleView setTextAlignment:NSTextAlignmentCenter];
    [titleView setTextColor:[UIColor colorWithRed:91/255.0 green:98/255.0 blue:117/255.0 alpha:1]];
    [titleView setFont:[UIFont systemFontOfSize:28.0]];
    [self.view addSubview:titleView];
    NSInteger titleViewH = titleView.frame.size.height + statusView.frame.size.height; //statusView + titleView
 
    
    
    //상품 Area
    UIView *productView = [[UIView alloc] initWithFrame:CGRectMake(wrapperX, titleViewH, wrapperW, wrapperH - 290)];
    [self.view addSubview:productView];
    NSInteger productViewH = productView.frame.size.height;
    
    
        //상품 아이템
        NSInteger itemWH = 163;
        NSInteger padding = 20;
        NSInteger margin = 10;
        NSInteger offset = padding + itemWH + margin;
    
        //아이템1
        UIButton *item1 = [UIButton buttonWithType:UIButtonTypeCustom];
        item1.tag = 1;
        [item1 setFrame:CGRectMake(padding, padding, itemWH, itemWH)];
        [item1 setBackgroundImage:[self imageWithColor:[UIColor whiteColor]] forState:UIControlStateNormal];
        [item1 setBackgroundImage:[self imageWithColor:[UIColor colorWithRed:245/255.0 green:245/255.0 blue:245/255.0 alpha:1]] forState:UIControlStateHighlighted];
        [item1 addTarget:self action:@selector(didSelectedItem:) forControlEvents:UIControlEventTouchUpInside];
        [productView addSubview:item1];
 
            //이미지
            UIImageView *item1Image = [[UIImageView alloc] initWithFrame:CGRectMake(30, 20, itemWH - 60, itemWH - 60)];
            [item1Image setImage:[UIImage imageNamed:@"item1.png"]];
            [item1 addSubview:item1Image];
 
            //텍스트
            UILabel *item1Label = [[UILabel alloc] initWithFrame:CGRectMake(0, 130, itemWH, 30)];
            [item1Label setText:@"100볼"];
            [item1Label setFont:[UIFont systemFontOfSize:16]];
            [item1Label setTextAlignment:NSTextAlignmentCenter];
            [item1Label setTextColor:[UIColor grayColor]];
            [item1 addSubview:item1Label];
    
    
        //아이템2
        UIButton *item2 = [UIButton buttonWithType:UIButtonTypeCustom];
        item2.tag = 2;
        [item2 setFrame:CGRectMake(offset, padding, itemWH, itemWH)];
        [item2 setBackgroundImage:[self imageWithColor:[UIColor whiteColor]] forState:UIControlStateNormal];
        [item2 setBackgroundImage:[self imageWithColor:[UIColor colorWithRed:245/255.0 green:245/255.0 blue:245/255.0 alpha:1]] forState:UIControlStateHighlighted];
        [item2 addTarget:self action:@selector(didSelectedItem:) forControlEvents:UIControlEventTouchUpInside];
        [productView addSubview:item2];
 
            //이미지
            UIImageView *item2Image = [[UIImageView alloc] initWithFrame:CGRectMake(25, 12, itemWH - 50, itemWH - 50)];
            [item2Image setImage:[UIImage imageNamed:@"item2.png"]];
            [item2 addSubview:item2Image];
            
            //텍스트
            UILabel *item2Label = [[UILabel alloc] initWithFrame:CGRectMake(0, 130, itemWH, 30)];
            [item2Label setText:@"300볼"];
            [item2Label setFont:[UIFont systemFontOfSize:16]];
            [item2Label setTextAlignment:NSTextAlignmentCenter];
            [item2Label setTextColor:[UIColor grayColor]];
            [item2 addSubview:item2Label];

    
        //아이템3
        UIButton *item3 = [UIButton buttonWithType:UIButtonTypeCustom];
        item3.tag = 3;
        [item3 setFrame:CGRectMake(padding, offset, itemWH, itemWH)];
        [item3 setBackgroundImage:[self imageWithColor:[UIColor whiteColor]] forState:UIControlStateNormal];
        [item3 setBackgroundImage:[self imageWithColor:[UIColor colorWithRed:245/255.0 green:245/255.0 blue:245/255.0 alpha:1]] forState:UIControlStateHighlighted];
        [item3 addTarget:self action:@selector(didSelectedItem:) forControlEvents:UIControlEventTouchUpInside];
        [productView addSubview:item3];

            //이미지
            UIImageView *item3Image = [[UIImageView alloc] initWithFrame:CGRectMake(25, 12, itemWH - 50, itemWH - 50)];
            [item3Image setImage:[UIImage imageNamed:@"item3.png"]];
            [item3 addSubview:item3Image];
            
            //텍스트
            UILabel *item3Label = [[UILabel alloc] initWithFrame:CGRectMake(0, 130, itemWH, 30)];
            [item3Label setText:@"1000볼"];
            [item3Label setFont:[UIFont systemFontOfSize:16]];
            [item3Label setTextAlignment:NSTextAlignmentCenter];
            [item3Label setTextColor:[UIColor grayColor]];
            [item3 addSubview:item3Label];
    

    
        //아이템4
        UIButton *item4 = [UIButton buttonWithType:UIButtonTypeCustom];
        item4.tag = 4;
        [item4 setFrame:CGRectMake(offset, offset, itemWH, itemWH)];
        [item4 setBackgroundImage:[self imageWithColor:[UIColor whiteColor]] forState:UIControlStateNormal];
        [item4 setBackgroundImage:[self imageWithColor:[UIColor colorWithRed:245/255.0 green:245/255.0 blue:245/255.0 alpha:1]] forState:UIControlStateHighlighted];
        [item4 addTarget:self action:@selector(didSelectedItem:) forControlEvents:UIControlEventTouchUpInside];
        [productView addSubview:item4];

            //이미지
            UIImageView *item4Image = [[UIImageView alloc] initWithFrame:CGRectMake(25, 12, itemWH - 50, itemWH - 50)];
            [item4Image setImage:[UIImage imageNamed:@"item4.png"]];
            [item4 addSubview:item4Image];
            
            //텍스트
            UILabel *item4Label = [[UILabel alloc] initWithFrame:CGRectMake(0, 130, itemWH, 30)];
            [item4Label setText:@"5000볼"];
            [item4Label setFont:[UIFont systemFontOfSize:16]];
            [item4Label setTextAlignment:NSTextAlignmentCenter];
            [item4Label setTextColor:[UIColor grayColor]];
            [item4 addSubview:item4Label];

    
    
    
    //디스플레이
    UIView *displayView = [[UIView alloc] initWithFrame:CGRectMake(wrapperX, titleViewH + productViewH, wrapperW, 90)];
    [displayView setBackgroundColor:[UIColor colorWithRed:111/255.0 green:170/255.0 blue:154/255.0 alpha:1]];
    [self.view addSubview:displayView];
    NSInteger displayViewH = displayView.frame.size.height;
    
        //볼
        UIImageView *pokeBall = [[UIImageView alloc] initWithFrame:CGRectMake(padding + 3, padding, displayViewH - 40, displayViewH - 40)];
        [pokeBall setImage:[UIImage imageNamed:@"ball.png"]];
        [displayView addSubview:pokeBall];
    
        //에셋
        self.assetLabel = [[UILabel alloc] initWithFrame:CGRectMake(padding, 0, displayView.frame.size.width - 40, displayViewH)];
        [self.assetLabel setFont:[UIFont systemFontOfSize:24]];
        [self.assetLabel setText:@"포켓볼을 충전해주세요"];
        [self.assetLabel setTextColor:[UIColor whiteColor]];
        [self.assetLabel setTextAlignment:NSTextAlignmentRight];
        [displayView addSubview:self.assetLabel];
 
    
    
    //인풋
    UIView *inputView = [[UIView alloc] initWithFrame:CGRectMake(wrapperX, titleViewH + productViewH + displayViewH, wrapperW, 90)];
    [inputView setBackgroundColor:[UIColor colorWithRed:133/255.0 green:220/255.0 blue:164/255.0 alpha:1]];
    [self.view addSubview:inputView];
    NSInteger inputViewW = inputView.frame.size.width;
    NSInteger inputViewH = inputView.frame.size.height;
    
        NSInteger btnW = inputViewW / 3;
    
        UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
        btn1.frame = CGRectMake(0, 0, inputViewW / 3, inputViewH);
        btn1.tag = 11;
        [btn1 setTitle:@"+100볼" forState:UIControlStateNormal];
        [btn1.titleLabel setFont:[UIFont systemFontOfSize:22]];
        [btn1 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [btn1 setTitleColor:[UIColor colorWithRed:69/255.0 green:105/255.0 blue:76/255.0 alpha:1] forState:UIControlStateHighlighted];
        [btn1 addTarget:self action:@selector(didSelectedBtn:) forControlEvents:UIControlEventTouchUpInside];
        [inputView addSubview:btn1];
    
        UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
        btn2.frame = CGRectMake(btnW, 0, inputViewW / 3, inputViewH);
        btn2.tag = 12;
        [btn2 setTitle:@"+500볼" forState:UIControlStateNormal];
        [btn2.titleLabel setFont:[UIFont systemFontOfSize:22]];
        [btn2 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [btn2 setTitleColor:[UIColor colorWithRed:69/255.0 green:105/255.0 blue:76/255.0 alpha:1] forState:UIControlStateHighlighted];
        [btn2 addTarget:self action:@selector(didSelectedBtn:) forControlEvents:UIControlEventTouchUpInside];
        [inputView addSubview:btn2];
        
        UIButton *btn3 = [UIButton buttonWithType:UIButtonTypeCustom];
        btn3.frame = CGRectMake(btnW * 2, 0, inputViewW / 3, inputViewH);
        btn3.tag = 13;
        [btn3 setTitle:@"+1000볼" forState:UIControlStateNormal];
        [btn3.titleLabel setFont:[UIFont systemFontOfSize:22]];
        [btn3 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [btn3 setTitleColor:[UIColor colorWithRed:69/255.0 green:105/255.0 blue:76/255.0 alpha:1] forState:UIControlStateHighlighted];
        [btn3 addTarget:self action:@selector(didSelectedBtn:) forControlEvents:UIControlEventTouchUpInside];
        [inputView addSubview:btn3];
  
    
    //추가 2.7 잔액표시
//    self.currentAssetDisplay = [[UILabel alloc] initWithFrame:CGRectMake(30, 30, 200, 50)];
//    self.currentAssetDisplay.text = [NSString stringWithFormat:@"%lu", self.asset];
//    [self.view addSubview:self.currentAssetDisplay];

}


//버튼bg 이벤트
- (UIImage *)imageWithColor:(UIColor *)color
{
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}




//충전 17.2.7수정
- (void)didSelectedBtn:(UIButton *)sender
{
    if (sender.tag == 11) {

        self.asset += 100;
    
    }else if (sender.tag == 12){

        self.asset += 500;
    
    }else if (sender.tag == 13){

        self.asset += 1000;
    
    }
    
    self.assetLabel.font = [UIFont systemFontOfSize:40];
    self.assetLabel.text = [NSString stringWithFormat:@"%lu", self.asset];
    self.currentAssetDisplay.text = [NSString stringWithFormat:@"%lu", self.asset];
}



//아이템 17.2.7 수정
- (void)didSelectedItem:(UIButton *)sender
{
    NSInteger item1 = 100;
    NSInteger item2 = 300;
    NSInteger item3 = 1000;
    NSInteger item4 = 5000;

    switch (sender.tag) {
        case 1:
            if (self.asset - item1 >= 0) {
                
                self.asset -= item1;
                self.assetLabel.text = [NSString stringWithFormat:@"%lu", self.asset];
                
            } else {
                
                self.assetLabel.font = [UIFont systemFontOfSize:24];
                self.assetLabel.text = @"포켓볼을 충전해주세요";
                
            }
            break;

        case 2:
            if (self.asset - item2 >= 0) {
                
                self.asset -= item2;
                self.assetLabel.text = [NSString stringWithFormat:@"%lu", self.asset];
                
            } else {
                
                self.assetLabel.font = [UIFont systemFontOfSize:24];
                self.assetLabel.text = @"포켓볼을 충전해주세요";
                
            }
            break;

        case 3:
            if (self.asset - item3 >= 0) {
                
                self.asset -= item3;
                self.assetLabel.text = [NSString stringWithFormat:@"%lu", self.asset];
                
            } else {
                
                self.assetLabel.font = [UIFont systemFontOfSize:24];
                self.assetLabel.text = @"포켓볼을 충전해주세요";
                
            }
            break;

        case 4:
            if (self.asset - item4 >= 0) {
                
                self.asset -= item4;
                self.assetLabel.text = [NSString stringWithFormat:@"%lu", self.asset];
                
            } else {
                
                self.assetLabel.font = [UIFont systemFontOfSize:24];
                self.assetLabel.text = @"포켓볼을 충전해주세요";
                
            }
            break;

            
        default:
            break;
    }
    
    self.currentAssetDisplay.text = [NSString stringWithFormat:@"%lu", self.asset];

}


/*충전 old
 - (void)didSelectedBtn1:(UIButton *)sender
 {
 self.asset += 100;
 self.assetLabel.font = [UIFont systemFontOfSize:40];
 self.assetLabel.text = [NSString stringWithFormat:@"%lu", self.asset];
 }
 
 - (void)didSelectedBtn2:(UIButton *)sender
 {
 self.asset += 500;
 self.assetLabel.font = [UIFont systemFontOfSize:40];
 self.assetLabel.text = [NSString stringWithFormat:@"%lu", self.asset];
 }
 
 - (void)didSelectedBtn3:(UIButton *)sender
 {
 self.asset = self.asset + 1000;
 self.assetLabel.font = [UIFont systemFontOfSize:40];
 self.assetLabel.text = [NSString stringWithFormat:@"%lu", self.asset];
 }
 */

/*
 //아이템 old ver.
 - (void)didSelectedItem1:(UIButton *)sender
 {
 NSInteger value = 100;
 
 if (self.asset - value >= 0) {
 
 self.asset -= value;
 self.assetLabel.text = [NSString stringWithFormat:@"%lu", self.asset];
 
 } else {
 
 self.assetLabel.font = [UIFont systemFontOfSize:24];
 self.assetLabel.text = @"포켓볼을 충전해주세요";
 
 }
 }
 
 - (void)didSelectedItem2:(UIButton *)sender
 {
 NSInteger value = 300;
 
 if (self.asset - value >= 0) {
 
 self.asset -= value;
 self.assetLabel.text = [NSString stringWithFormat:@"%lu", self.asset];
 
 } else {
 
 self.assetLabel.font = [UIFont systemFontOfSize:24];
 self.assetLabel.text = @"포켓볼을 충전해주세요";
 
 }
 }
 
 - (void)didSelectedItem3:(UIButton *)sender
 {
 NSInteger value = 1000;
 
 if (self.asset - value >= 0) {
 
 self.asset -= value;
 self.assetLabel.text = [NSString stringWithFormat:@"%lu", self.asset];
 
 } else {
 
 self.assetLabel.font = [UIFont systemFontOfSize:24];
 self.assetLabel.text = @"포켓볼을 충전해주세요";
 
 }
 }
 
 - (void)didSelectedItem4:(UIButton *)sender
 {
 NSInteger value = 5000;
 
 if (self.asset - value >= 0) {
 
 self.asset -= value;
 self.assetLabel.text = [NSString stringWithFormat:@"%lu", self.asset];
 
 } else {
 
 self.assetLabel.font = [UIFont systemFontOfSize:24];
 self.assetLabel.text = @"포켓볼을 충전해주세요";
 
 }
 }
 */



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
