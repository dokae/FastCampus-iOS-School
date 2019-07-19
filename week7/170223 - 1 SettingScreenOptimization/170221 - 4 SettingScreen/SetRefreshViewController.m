//
//  SetRefreshViewController.m
//  170221 - 4 SettingScreen
//
//  Created by Park Jae Han on 2017. 2. 22..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "SetRefreshViewController.h"
#import "DataCenter.h"

@interface SetRefreshViewController ()
<UITableViewDelegate, UITableViewDataSource>
@property NSArray *refeshTime;

@property UITableView *tableView;

@end

@implementation SetRefreshViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    self.navigationItem.title = @"새로고치기";

    CGSize selfFrame = self.view.frame.size;

    UITableView *setList = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, selfFrame.width, selfFrame.height) style:UITableViewStyleGrouped];
    setList.delegate = self;
    setList.dataSource = self;
    [self.view addSubview:setList];
    self.tableView = setList;
    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    if (cell == nil) {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }

    cell.textLabel.text = [[DataCenter sharedInstance].refreshTime objectAtIndex:indexPath.row];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;

    if (indexPath.row == [DataCenter sharedInstance].indexCell) {
        
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    
    } else {
        
        cell.accessoryType = UITableViewCellAccessoryNone;
    }

    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [[NSNotificationCenter defaultCenter] postNotificationName:@"selectedTime" object:[[DataCenter sharedInstance].refreshTime objectAtIndex:indexPath.row]];
    
    [tableView reloadData];
    [[DataCenter sharedInstance] setSettingIndex:indexPath.row];
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
