//
//  ViewController.m
//  170215 - 2 UITableView
//
//  Created by Park Jae Han on 2017. 2. 15..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UITableViewDataSource>

@property NSArray *list;
@property NSArray *list2;

@property NSDictionary *dic;

@end

@implementation ViewController

////예제1
//- (void)viewDidLoad {
//    [super viewDidLoad];
//    
//    UITableView *tv = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
//    tv.dataSource = self;
//    [self.view addSubview:tv];
//    
//}
//
//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
//{
//    return 100;
//}
//
//
//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
//   
//    if (cell == nil) {
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
//
//    }
//
//    cell.textLabel.text = [NSString stringWithFormat:@"%ld", indexPath.row + 1];
//    
//    NSLog(@"tableView row: %ld", indexPath.row);
//    
//    return cell;
//}


//예제2
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.list = @[@"가",@"나",@"다",@"라",@"마",@"가",@"나",@"다",@"라",@"마",@"가",@"나",@"다",@"라",@"마",@"가",@"나",@"다",@"라",@"마",@"가",@"나",@"다",@"라",@"마",@"가",@"나",@"다",@"라",@"마"];
    self.list2 = @[@"아",@"야",@"어",@"여",@"오",@"아",@"야",@"어",@"여",@"오",@"아",@"야",@"어",@"여",@"오",@"아",@"야",@"어",@"여",@"오",@"아",@"야",@"어",@"여",@"오",@"아",@"야",@"어",@"여",@"오"];

//    self.dic = @{@"k1":@"v1",@"k1":@"v1",@"k1":@"v1"};
    
    UITableView *tv = [[UITableView alloc] initWithFrame:CGRectMake(0, 60, self.view.frame.size.width, self.view.frame.size.height - 60) style:UITableViewStyleGrouped];
    tv.dataSource = self;
    [self.view addSubview:tv];
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return @"header title";
}
//
//- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
//{
//    return @"footer title";
//}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    if (section == 0) {
    
        return self.list.count;
    
    } else if (section == 1) {

        return self.list2.count;
    }
 
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    
    if (indexPath.section == 0) {
        cell.textLabel.text = [self.list objectAtIndex:indexPath.row];
    } else if (indexPath.section == 1) {
        cell.textLabel.text = [self.list2 objectAtIndex:indexPath.row];
    }
    
    return cell;
}


















- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
