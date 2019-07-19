//
//  ViewController.m
//  170303 - 1 Plist
//
//  Created by Park Jae Han on 2017. 3. 3..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *filepath = [[NSBundle mainBundle] pathForResource:@"Sample" ofType:@"plist"];
    
    NSArray *list = [NSArray arrayWithContentsOfFile:filepath];
    NSLog(@"list %@", list);
    
    
    
    // 로드시에만 불림
//    NSString *imgPath = [[NSBundle mainBundle] pathForResource:@"imgname" ofType:@"png"];
//    UIImage *img = [UIImage imageWithContentsOfFile:imgPath];
    
    
    // 메모리에 항상 로드, 에셋사용
//    UIImage *img2 = [UIImage imageNamed:@"check"];
//    
//    UIImageView *imgView = [[UIImageView alloc] initWithImage:img2];
//    [self.view addSubview:imgView];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
