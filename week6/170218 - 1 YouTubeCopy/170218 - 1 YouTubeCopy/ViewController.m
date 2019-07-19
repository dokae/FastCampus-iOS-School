//
//  ViewController.m
//  170218 - 1 YouTubeCopy
//
//  Created by Park Jae Han on 2017. 2. 17..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "ViewController.h"
#import "CustomTableViewCell.h"
#import "NavBarUIView.h"
#import "TabBarUIView.h"

@interface ViewController ()
<UITableViewDelegate, UITableViewDataSource>
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UITableView *tv = [[UITableView alloc] initWithFrame:CGRectMake(0, 60, self.view.frame.size.width, self.view.frame.size.height - 60)
                                                   style:UITableViewStylePlain];
    
    tv.delegate = self;
    tv.dataSource = self;
    [self.view addSubview:tv];

    NavBarUIView *navBarView = [[NavBarUIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 60)];
    [self.view addSubview:navBarView];
    
    TabBarUIView *tabBarView = [[TabBarUIView alloc] initWithFrame:CGRectMake(-1, self.view.frame.size.height - 44, self.view.frame.size.width + 2, 45)];
    [self.view addSubview:tabBarView];


    
//    //샘플
//    UIImageView *sample = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
//    [sample setImage:[UIImage imageNamed:@"sample"]];
//    sample.alpha = 0.5;
//    [self.view addSubview:sample];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if (cell == nil) {
        
        cell = [[CustomTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    
    switch (indexPath.row) {
        case 0:
            [cell setDataWithVideoThumbnail:@"thumb1" profileImg:@"" videoTitle:@"aaaaaa" castName:@"bbbbbb" viewOfVideo:@"200" uploadDate:@"5일전"];
            break;
        
        case 1:
            [cell setDataWithVideoThumbnail:@"thumb1" profileImg:@"" videoTitle:@"aabbaaaa" castName:@"bbbbbbbb" viewOfVideo:@"200" uploadDate:@"5일전"];
            break;
            
        default:
            break;
    }
    
    cell.selectionStyle = UITableViewCellSelectionStyleNone;

    return cell;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 5;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 281;
}












- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
