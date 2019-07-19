//
//  EpisodeDownloadViewController.m
//  170221 - 4 SettingScreen
//
//  Created by Park Jae Han on 2017. 2. 24..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "EpisodeDownloadViewController.h"
#import "DataCenter.h"

@interface EpisodeDownloadViewController ()
<UITableViewDelegate, UITableViewDataSource>
@property UITableView *tableView;

@end

@implementation EpisodeDownloadViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"에피소드 다운로드";

    CGSize selfFrame = self.view.frame.size;
    
    UITableView *setDownList = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, selfFrame.width, selfFrame.height) style:UITableViewStyleGrouped];
    setDownList.delegate = self;
    setDownList.dataSource = self;
    [self.view addSubview:setDownList];
    self.tableView = setDownList;

}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    if (cell == nil) {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    
    cell.textLabel.text = [[DataCenter sharedInstance].downloadData objectAtIndex:indexPath.row];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    if (indexPath.row == [DataCenter sharedInstance].indexCell2) {
        
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    
    } else {
        
        cell.accessoryType = UITableViewCellAccessoryNone;
        
    }
    
    
    
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [[NSNotificationCenter defaultCenter] postNotificationName:@"selectedDownload" object:[[DataCenter sharedInstance].downloadData objectAtIndex:indexPath.row]];
    [[DataCenter sharedInstance] setSettingIndex2:indexPath.row];
    [tableView reloadData];
}






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
