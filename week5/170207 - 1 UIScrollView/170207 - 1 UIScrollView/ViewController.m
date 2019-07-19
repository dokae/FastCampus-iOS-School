//
//  ViewController.m
//  170207 - 1 UIScrollView
//
//  Created by Park Jae Han on 2017. 2. 7..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UIScrollViewDelegate, UIPageViewControllerDelegate>


@property UIPageControl *pageControl;
@property UIScrollView *myScrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSInteger viewWidth = self.view.frame.size.width;
    NSInteger viewHeight = self.view.frame.size.height;
    
    self.myScrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, viewWidth, viewHeight)];
    [self.myScrollView setContentSize:CGSizeMake(self.myScrollView.frame.size.width * 3, viewHeight)];
    self.myScrollView.delegate = self;
    self.myScrollView.pagingEnabled = YES;
    self.myScrollView.bounces = YES;
    [self.view addSubview:self.myScrollView];
    
    
    UIView *newView1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, viewWidth, viewHeight)];
    newView1.backgroundColor = [UIColor grayColor];
    [self.myScrollView addSubview:newView1];
    
    UIView *newView2 = [[UIView alloc] initWithFrame:CGRectMake(viewWidth, 0, viewWidth, viewHeight)];
    newView2.backgroundColor = [UIColor redColor];
    [self.myScrollView addSubview:newView2];
    
    UIView *newView3 = [[UIView alloc] initWithFrame:CGRectMake(viewWidth * 2, 0, viewWidth, viewHeight)];
    newView3.backgroundColor = [UIColor blueColor];
    [self.myScrollView addSubview:newView3];
    
    
    self.pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(0,viewHeight - 50,viewWidth, viewHeight - (viewHeight - 50))];
    self.pageControl.numberOfPages = [self.myScrollView.subviews count];
    self.pageControl.currentPage = 0;
    [self.view addSubview:self.pageControl];
    
}


//- (void)scrollViewDidScroll:(UIScrollView *)scrollView
//{
//    NSInteger offsetX = scrollView.contentOffset.x;
//    NSInteger viewWidth = scrollView.frame.size.width;
//    
//    if (offsetX == 0) {
//
//        self.pageControl.currentPage = 0;
//        
//    }else if (offsetX == viewWidth){
//    
//        self.pageControl.currentPage = 1;
//        
//    }else if (offsetX == viewWidth * 2){
//    
//        self.pageControl.currentPage = 2;
//    }
//}

-(void)scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset {

    NSInteger offsetX = targetContentOffset -> x;
    NSInteger viewWidth = scrollView.frame.size.width;
    NSInteger viewCounter = [scrollView.subviews count];
    
    for (NSInteger i = 0; i < viewCounter; i++) {
        
        if (offsetX == viewWidth * i) {
            self.pageControl.currentPage = i;
        }
        
    }
    
//    if (offsetX == 0) {
//        
//        self.pageControl.currentPage = 0;
//        
//    }else if (offsetX == viewWidth){
//        
//        self.pageControl.currentPage = 1;
//        
//    }else if (offsetX == viewWidth * 2){
//        
//        self.pageControl.currentPage = 2;
//    }

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
