//
//  ViewController.m
//  170315 - 1 ImageDownload
//
//  Created by Park Jae Han on 2017. 3. 15..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@property (weak, nonatomic) IBOutlet UIImageView *img1;
@property (weak, nonatomic) IBOutlet UIImageView *img2;
@property (weak, nonatomic) IBOutlet UIImageView *img3;
@property (weak, nonatomic) IBOutlet UIImageView *img4;
@property (weak, nonatomic) IBOutlet UIImageView *img5;
@property (weak, nonatomic) IBOutlet UIImageView *img6;
@property (weak, nonatomic) IBOutlet UIImageView *img7;
@property (weak, nonatomic) IBOutlet UIImageView *img8;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //동기 다운로드
//    self.imageView.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://cfile22.uf.tistory.com/image/2255BA3F57F7223C067FEA"]]];
//    self.img1.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"https://i.ytimg.com/vi/cbBLtQizxPM/maxresdefault.jpg"]]];
//    self.img2.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"https://i.ytimg.com/vi/MfqGn-2pW8E/maxresdefault.jpg"]]];
//    self.img3.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://uhd.img.topstarnews.net/wys4/file_attach/2017/01/13/1484241011-11.jpg"]]];
//    self.img4.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"https://pbs.twimg.com/media/CvIJHqnVYAAkM8c.jpg"]]];
//    self.img5.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"https://pbs.twimg.com/media/C1SHcrbUQAAsDKW.jpg:large"]]];
//    self.img6.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://cfile21.uf.tistory.com/image/236283395844E5E201EA7B"]]];
//    self.img7.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSP-WfqKc4o-FmoHL4871jemUuR7F2e8PmyzzGdrnlEfDT3Nhzj"]]];
//    self.img8.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://img1.daumcdn.net/thumb/R720x0.q80/?scode=mtistory&fname=http%3A%2F%2Fcfile26.uf.tistory.com%2Fimage%2F225D4E4D582D9FEF1F80FF"]]];
    

    
    [self.imageView.image loadImg:@"http://cfile22.uf.tistory.com/image/2255BA3F57F7223C067FEA"];
    
}

- (void)loadImg:(NSString *)imageUrl {
    
    NSURL *imgURL = [NSURL URLWithString:imageUrl];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    NSURLSessionTask *task = [session dataTaskWithURL:imgURL completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        if (data) {
            
            UIImage *image = [UIImage imageWithData:data];
            if (image) {
                
                dispatch_async (dispatch_get_main_queue(), ^{
                    
                    self.imageView.image = image;
                });
            }
        }
    }];
    
    [task resume];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
