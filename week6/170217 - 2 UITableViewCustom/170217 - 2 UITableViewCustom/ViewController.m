//
//  ViewController.m
//  170217 - 2 UITableViewCustom
//
//  Created by Park Jae Han on 2017. 2. 17..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "ViewController.h"
#import "MyCustomTableViewCell.h"

@interface ViewController ()
<UITableViewDelegate, UITableViewDataSource>
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    MyCustomView *customView = [[MyCustomView alloc] initWithFrame:CGRectMake(0, 60, self.view.frame.size.width, 250)];
//    [customView setDataWithIMGName:@"manatus.jpg" name:@"이름" msg:@"프로필메시지프로필메시지프로필메시지프로필메시지"];
//    [self.view addSubview: customView];
    
    UITableView *tv = [[UITableView alloc] initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain];
    
    tv.delegate = self;
    tv.dataSource = self;
    [self.view addSubview:tv];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MyCustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
  
    if (cell == nil) {
        
        cell = [[MyCustomTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    
//    [cell setDataWithIMGName:@"a" name:@"a" msg:[NSString stringWithFormat:@"%ld", indexPath.row]];
    
    
    return cell;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 200;
}










@end
