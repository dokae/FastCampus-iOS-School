//
//  ViewController.m
//  170203 - 1 UIView
//
//  Created by 박재한 on 2017. 2. 3..
//  Copyright © 2017년 noname. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

//@property(nonatomic) CGPoint bounds;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
//    //5번 진행중..
//    UIView *mashhead = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 168)];
//    [self.view addSubview:mashhead];
//
//        UIView *profileBG = [[UIView alloc] initWithFrame:CGRectMake(0, 0, mashhead.frame.size.width, mashhead.frame.size.height)];
//        [profileBG setBackgroundColor:[UIColor grayColor]];
//        [mashhead addSubview:profileBG];
//      
//        UIView *profileBox = [[UIView alloc] initWithFrame:CGRectMake(profileBG.center.x - 40, mashhead.frame.size.height - 40, 80, 80)];
//        [profileBox setBackgroundColor:[UIColor redColor]];
//        [mashhead addSubview:profileBox];
//
//            UIView *profileName = [[UIView alloc] initWithFrame:CGRectMake(0, profileBox.frame.size.height + 3, profileBox.frame.size.width, 25)];
//            [profileName setBackgroundColor:[UIColor blueColor]];
//            [profileBox addSubview:profileName];
//            
//            UIView *profileEmail = [[UIView alloc] initWithFrame:CGRectMake(0, (profileName.frame.size.height + profileName.frame.origin.y) + 2, profileBox.frame.size.width, 13)];
//            [profileEmail setBackgroundColor:[UIColor blueColor]];
//            [profileBox addSubview:profileEmail];
//    
//    UIView *btnArea = [[UIView alloc] initWithFrame:CGRectMake(0, mashhead.frame.size.height + 100, self.view.frame.size.width, 45)];
//    [btnArea setBackgroundColor:[UIColor grayColor]];
//    [self.view addSubview:btnArea];
//    
//        UIView *btn1Area = [[UIView alloc] initWithFrame:CGRectMake(0, 0, btnArea.frame.size.width / 4, btnArea.frame.size.height)];
//        [btnArea addSubview:btn1Area];
//        
//        UIView *btn2Area = [[UIView alloc] initWithFrame:CGRectMake(btnArea.frame.size.width / 4, 0, btnArea.frame.size.width / 4, btnArea.frame.size.height)];
//        [btn2Area setBackgroundColor:[UIColor redColor]];
//        [btnArea addSubview:btn2Area];
//     
//        UIView *btn3Area = [[UIView alloc] initWithFrame:CGRectMake((btnArea.frame.size.width / 4) * 2, 0, btnArea.frame.size.width / 4, btnArea.frame.size.height)];
//        [btn3Area setBackgroundColor:[UIColor blueColor]];
//        [btnArea addSubview:btn3Area];
//        
//        UIView *btn4Area = [[UIView alloc] initWithFrame:CGRectMake((btnArea.frame.size.width / 4) * 3, 0, btnArea.frame.size.width / 4, btnArea.frame.size.height)];
//        [btn4Area setBackgroundColor:[UIColor greenColor]];
//        [btnArea addSubview:btn4Area];
//    
//            UIView *btn1boxWrap = [[UIView alloc] initWithFrame:CGRectMake(btn1Area.center.x - (btn1Area.frame.size.width / 2 - 10), btn1Area.center.y - 7.5, btn1Area.frame.size.width - 10, 15)];
//            [btn1boxWrap setBackgroundColor:[UIColor redColor]];
//            [btn1boxWrap setAlpha:0.7];
//            [btn1Area addSubview:btn1boxWrap];
//    
//                UIView *btn1topBox = [[UIView alloc] initWithFrame:CGRectMake(0, 0, btn1Area.frame.size.width - 10, 5)];
//                [btn1topBox setBackgroundColor:[UIColor blackColor]];
//                [btn1boxWrap addSubview:btn1topBox];
//                UIView *btn1botBox = [[UIView alloc] initWithFrame:CGRectMake(0, btn1topBox.frame.origin.y + 10, btn1Area.frame.size.width - 10, 5)];
//                [btn1botBox setBackgroundColor:[UIColor blackColor]];
//                [btn1boxWrap addSubview:btn1botBox];
    
    
    
    //    //2번
    //    UIView *navBar = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 375, 64)];
    //    [navBar setBackgroundColor:[UIColor grayColor]];
    //    [self.view addSubview:navBar];
    //
    //    UIView *tabBar = [[UIView alloc] initWithFrame:CGRectMake(0, 619, 375, 48)];
    //    [tabBar setBackgroundColor:[UIColor grayColor]];
    //    [self.view addSubview:tabBar];
    //
    //    //3번
    //    UIView *topLeftBox = [[UIView alloc] initWithFrame:CGRectMake(self.view.center.x - 50, self.view.center.y - 50, 90, 10)];
    //    [topLeftBox setBackgroundColor:[UIColor blueColor]];
    //    [self.view addSubview:topLeftBox];
    //
    //    UIView *midRightBox = [[UIView alloc] initWithFrame:CGRectMake(90, 0, 10, 90)];
    //    [midRightBox setBackgroundColor:[UIColor greenColor]];
    //    [topLeftBox addSubview:midRightBox];
    //
    //    UIView *bottomRightBox = [[UIView alloc] initWithFrame:CGRectMake(-80, 90, 90, 10)];
    //    [bottomRightBox setBackgroundColor:[UIColor redColor]];
    //    [midRightBox addSubview:bottomRightBox];
    //
    //    UIView *midLeftBox = [[UIView alloc] initWithFrame:CGRectMake(-10, -80, 10, 90)];
    //    [midLeftBox setBackgroundColor:[UIColor blackColor]];
    //    [bottomRightBox addSubview:midLeftBox];

    
    
        //4번
    
    NSInteger margin = 10;
    NSInteger offsetX = margin;
    NSInteger offsetY = margin;
    
    
    UIView *container = [[UIView alloc] initWithFrame:CGRectMake(20, 120, self.view.frame.size.width - 40, 80)];
    container.layer.borderColor = [UIColor blackColor].CGColor;
    container.layer.borderWidth = 1;
    [self.view addSubview:container];
    //    container.backgroundColor = [UIColor grayColor];
    
    UIImageView *box1 = [[UIImageView alloc] initWithFrame:CGRectMake(offsetX, offsetY, 60, 60)];
    box1.image = [UIImage imageNamed:@"test_img.png"];
    box1.contentMode = UIViewContentModeScaleAspectFit; // = [box1 setContentMode:UIViewContentModeScaleAspectFit];
    box1.backgroundColor = [UIColor blackColor];
    [container addSubview:box1];
    offsetX = offsetX + box1.frame.size.width + margin;

    UILabel *box2 = [[UILabel alloc] initWithFrame:CGRectMake(offsetX, offsetY, container.frame.size.width - 90, 40)];
    box2.backgroundColor = [UIColor grayColor];
    box2.text = @"이상한테스트트트트트이상해씨";
    box2.textColor = [UIColor colorWithRed:30/255.0 green:183/255.0 blue:23/255.0 alpha:1];
    box2.font = [UIFont systemFontOfSize:30];
    [container addSubview:box2];
    offsetY = offsetY + box2.frame.size.height + margin;

    UILabel *box3 = [[UILabel alloc] initWithFrame:CGRectMake(offsetX, offsetY, box2.frame.size.width, 10)];
    [box3 setBackgroundColor:[UIColor colorWithRed:220/255.0 green:220/255.0 blue:220/255.0 alpha:1]];
    box3.text = @"테스트트ㅡ트트트트트트틑";
    box3.textColor = [UIColor blueColor];
    box3.font = [UIFont systemFontOfSize:15];
    [container addSubview:box3];
    
    
    // UIbutton
    
    offsetY = 200;
    UIButton *testBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    testBtn.frame = CGRectMake(container.frame.size.width / 2 - 50, offsetY, 100, 35);
    [testBtn setTitle:@"눌러1" forState:UIControlStateNormal];
    [testBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [testBtn setTitle:@"놔줘" forState:UIControlStateHighlighted];
    [testBtn addTarget:self action:@selector(didSelectedBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:testBtn];
    
    UIButton *testBtn2 = [UIButton buttonWithType:UIButtonTypeInfoDark];
    testBtn2.frame = CGRectMake(100, 300, 100, 30);
    [testBtn2 setTitle:@"눌러1" forState:UIControlStateNormal];
    [testBtn2 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [testBtn2 setTitle:@"놔줘" forState:UIControlStateHighlighted];
    [testBtn2 addTarget:self action:@selector(didSelectedBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:testBtn2];

    UIButton *testBtn3 = [UIButton buttonWithType:UIButtonTypeContactAdd];
    testBtn3.frame = CGRectMake(100, 350, 100, 30);
    [testBtn3 setTitle:@"눌러1" forState:UIControlStateNormal];
    [testBtn3 setTitleColor:[UIColor redColor] forState:UIControlStateSelected];
    [testBtn3 setTitle:@"놔줘" forState:UIControlStateHighlighted];
    [testBtn3 addTarget:self action:@selector(didSelectedBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:testBtn3];
   
    UIButton *testBtn4 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    testBtn4.backgroundColor = [UIColor grayColor];
    testBtn4.frame = CGRectMake(100, 400, 100, 30);
    [testBtn4 setTitle:@"눌러1" forState:UIControlStateNormal];
    [testBtn4 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [testBtn4 setTitle:@"놔줘" forState:UIControlStateHighlighted];
    [testBtn4 addTarget:self action:@selector(didSelectedBtn:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:testBtn4];
    
    
    

    
}

- (void)didSelectedBtn:(UIButton *)sender
{
    NSLog(@"버튼을 클릭");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
