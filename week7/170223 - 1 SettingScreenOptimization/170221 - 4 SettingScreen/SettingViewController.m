//
//  SettingViewController.m
//  170221 - 4 SettingScreen
//
//  Created by Park Jae Han on 2017. 2. 22..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "SettingViewController.h"
#import "SetRefreshViewController.h"
#import "EpisodeViewController.h"
#import "EpisodeDownloadViewController.h"
#import "DataCenter.h"

@interface SettingViewController ()
<UITableViewDelegate, UITableViewDataSource>

@property NSIndexPath *selectedCell;
@property NSString *test;
@property NSString *notiText;
@property UITableView *tableView;

@end

@implementation SettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"Podcast";
    
    CGSize selfFrame = self.view.frame.size;
    UITableView *settigTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, selfFrame.width, selfFrame.height) style:UITableViewStyleGrouped];
    settigTableView.dataSource = self;
    settigTableView.delegate = self;
    [self.view addSubview:settigTableView];
    self.tableView = settigTableView;
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(trackingPost:) name:@"selectedTime" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(trackingPost2:) name:@"selectedDownload" object:nil];

}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    NSArray *headerData = [[DataCenter sharedInstance].settingList objectForKey:@"headerData"];
    return headerData.count;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSArray *rowData = [[DataCenter sharedInstance].settingList objectForKey:@"rowData"];
    NSArray *rowList = [rowData objectAtIndex:section];
    return rowList.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    if (cell == nil) {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"Cell"];
        
    }
    
    NSArray *rowData = [[DataCenter sharedInstance].settingList objectForKey:@"rowData"];
    NSArray *rowList = [rowData objectAtIndex:indexPath.section];

    cell.textLabel.text = [rowList objectAtIndex:indexPath.row];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    UISwitch *switcher = [[UISwitch alloc] initWithFrame:CGRectMake(10, 10, 10, 10)];
    [switcher addTarget:self action:@selector(switchValueChange:) forControlEvents:UIControlEventValueChanged];
    switcher.on = NO;
    
    [switcher setAccessibilityIdentifier:[NSString stringWithFormat:@"%ld%ld", indexPath.section, indexPath.row]];

    switch (indexPath.section) {
        case 0:
            switch (indexPath.row) {
                case 0:
                    cell.imageView.image = [UIImage imageNamed:@"icon1.png"];
                    cell.accessoryView = switcher;
                    [switcher setOn:[[[NSUserDefaults standardUserDefaults] objectForKey:@"00"] boolValue]];
                    break;
                    
                case 1:
                    cell.imageView.image = [UIImage imageNamed:@"icon2.png"];
                    cell.accessoryView = switcher;
                    [switcher setOn:[[[NSUserDefaults standardUserDefaults] objectForKey:@"01"] boolValue]];
                    break;
                    
                default:
                    break;
            }
            break;
  
        case 1:
            switch (indexPath.row) {
                case 0:
                    cell.accessoryView = switcher;
                    [switcher setOn:[[[NSUserDefaults standardUserDefaults] objectForKey:@"10"] boolValue]];
                    break;
                    
                case 1:
                    cell.accessoryView = switcher;
                    [switcher setOn:[[[NSUserDefaults standardUserDefaults] objectForKey:@"11"] boolValue]];
                    break;
                    
                default:
                    break;
            }
            
            break;
            
        case 2:
            switch (indexPath.row) {
                case 0:
                    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
                    cell.detailTextLabel.text = [[[DataCenter sharedInstance] refreshTime] objectAtIndex:[[DataCenter sharedInstance] indexCell]];
                    break;
                    
                case 2:
                    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
                    cell.detailTextLabel.text = [[[DataCenter sharedInstance] downloadData] objectAtIndex:[[DataCenter sharedInstance] indexCell2]];
                    break;
                
                case 3:
                    cell.accessoryView = switcher;
                    [switcher setOn:[[[NSUserDefaults standardUserDefaults] objectForKey:@"23"] boolValue]];
                    break;
                    
                default:
                    cell.selectionStyle = UITableViewCellSelectionStyleDefault;
                    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
                    break;
            }
            break;
            
        case 3:
            cell.accessoryView = switcher;
            [switcher setOn:[[[NSUserDefaults standardUserDefaults] objectForKey:@"30"] boolValue]];
            break;
            
        case 4:
            cell.detailTextLabel.text = @"2.5.2 (1140.8)";
            break;
            
        default:
            break;
    }
    

    return cell;
}


- (void)trackingPost:(NSNotification *)noti
{
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:2];
    UITableViewCell *cell = [self.tableView cellForRowAtIndexPath:indexPath];
    cell.detailTextLabel.text = noti.object;
}


- (void)trackingPost2:(NSNotification *)noti
{
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:2 inSection:2];
    UITableViewCell *cell = [self.tableView cellForRowAtIndexPath:indexPath];
    cell.detailTextLabel.text = noti.object;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    if (indexPath.section == 2) {
        if (indexPath.row == 0) {
            
            SetRefreshViewController *setRefreshVC = [self.storyboard instantiateViewControllerWithIdentifier:@"SetRefreshViewController"];
//            setRefreshVC.selectedPath = [NSIndexPath indexPathForRow:[[DataCenter sharedInstance] indexCell] inSection:0];
            [self.navigationController pushViewController:setRefreshVC animated:YES];
            
        }
        if (indexPath.row == 1) {
            
            EpisodeViewController *episodeVC = [self.storyboard instantiateViewControllerWithIdentifier:@"EpisodeViewController"];
            [self.navigationController pushViewController:episodeVC animated:YES];
        }
        if (indexPath.row == 2) {
            
            EpisodeDownloadViewController *episodeDownloadVC = [[EpisodeDownloadViewController alloc] init];
            [self.navigationController pushViewController:episodeDownloadVC animated:YES];
        }
    }
    
    self.selectedCell = indexPath;
}


- (void)switchValueChange:(UISwitch *)sender
{
    if([sender.accessibilityIdentifier isEqualToString:@"00"]) {
        
        [[NSUserDefaults standardUserDefaults] setObject:sender.isOn ? @"YES" : @"NO" forKey:@"00"];

    } else if ([sender.accessibilityIdentifier isEqualToString:@"01"]) {

        [[NSUserDefaults standardUserDefaults] setObject:sender.isOn ? @"YES" : @"NO" forKey:@"01"];
    
    } else if ([sender.accessibilityIdentifier isEqualToString:@"10"]) {
    
        [[NSUserDefaults standardUserDefaults] setObject:sender.isOn ? @"YES" : @"NO" forKey:@"10"];
        
    } else if ([sender.accessibilityIdentifier isEqualToString:@"11"]) {
    
        [[NSUserDefaults standardUserDefaults] setObject:sender.isOn ? @"YES" : @"NO" forKey:@"11"];
        
    } else if ([sender.accessibilityIdentifier isEqualToString:@"23"]) {

        [[NSUserDefaults standardUserDefaults] setObject:sender.isOn ? @"YES" : @"NO" forKey:@"23"];
        
    } else if ([sender.accessibilityIdentifier isEqualToString:@"30"]) {
        
        [[NSUserDefaults standardUserDefaults] setObject:sender.isOn ? @"YES" : @"NO" forKey:@"30"];
    }
}


- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSArray *headerData = [[DataCenter sharedInstance].settingList objectForKey:@"headerData"];
    return [headerData objectAtIndex:section];
}


- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    NSString *footer;
    
    if (section == 3) {

        footer = @"Podcast 각각에 대해 앨범 사진을 기반으로 사용자 설정 색상을 사용합니다.";
    }
    
    return footer;
}


- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
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
