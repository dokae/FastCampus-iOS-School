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

@interface SettingViewController ()
<UITableViewDelegate, UITableViewDataSource>

@property NSDictionary *settingList;
@property NSIndexPath *selectedCell;

@end

@implementation SettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationItem.title = @"Podcast";
    
    CGSize selfFrame = self.view.frame.size;
    UITableView *settigTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, selfFrame.width, selfFrame.height) style:UITableViewStyleGrouped];
    settigTableView.dataSource = self;
    settigTableView.delegate = self;
    [self.view addSubview:settigTableView];

    
    NSArray *headerList = @[@"PODCAST 접근 허용", @"PODCAST 설정", @"PODCAST 기본 설정", @"손쉬운 사용", @""];
    NSArray *firstList  = @[@"백그라운드 앱 새로 고침", @"셀룰러 데이터"];
    NSArray *secondList = @[@"Podcast 동기화", @"Wi-Fi에서만 다운로드"];
    NSArray *thirdList  = @[@"새로 고치기", @"에피소드 제한", @"에피소드 다운로드", @"재생된 에피소드 삭제"];
    NSArray *fourthList = @[@"사용자 설정 색상"];
    NSArray *fifthList  = @[@"버전"];
    
    self.settingList = @{@"headerData"  : headerList,
                         @"rowData"     : @[firstList,secondList,thirdList,fourthList,fifthList]};
    
//    self.settingList = @{
//         @"PODCAST 접근 허용" : @[@"백그라운드 앱 새로 고침", @"셀룰러 데이터"],
//         @"PODCAST 설정"     : @[@"Podcast 동기화", @"Wi-Fi에서만 다운로드"],
//         @"PODCAST 기본 설정" : @[@"새로 고치기", @"에피소드 제한", @"에피소드 다운로드", @"재생된 에피소드 삭제"],
//         @"손쉬운 사용"        : @[@"사용자 설정 색상"],
//         @""                : @[@"버전"]};

}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    NSArray *headerData = [self.settingList objectForKey:@"headerData"];
    return headerData.count;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSArray *rowData = [self.settingList objectForKey:@"rowData"];
    NSArray *rowList = [rowData objectAtIndex:section];

    return rowList.count;

}


- (void)viewWillAppear:(BOOL)animated
{
    /*
    if ([indexPath isEqual:self.selectedCell]) {
        cell.selectionStyle = UITableViewCellSelectionStyleDefault;
    }
    */
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    if (cell == nil) {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"Cell"];
    }
    
    NSArray *rowData = [self.settingList objectForKey:@"rowData"];
    NSArray *rowList = [rowData objectAtIndex:indexPath.section];
    cell.textLabel.text = [rowList objectAtIndex:indexPath.row];

    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    UISwitch *switcher = [[UISwitch alloc] initWithFrame:CGRectMake(10, 10, 10, 10)];
    [switcher addTarget:self action:@selector(switchValueChange:) forControlEvents:UIControlEventValueChanged];
    switcher.on = YES;
    

    
    switch (indexPath.section) {
        case 0:
            switch (indexPath.row) {
                case 0:
                    cell.imageView.image = [UIImage imageNamed:@"icon1.png"];
                    cell.accessoryView = switcher;
                    break;
                    
                case 1:
                    cell.imageView.image = [UIImage imageNamed:@"icon2.png"];
                    cell.accessoryView = switcher;
                    break;
                    
                default:
                    break;
            }
            break;
        case 2:
            switch (indexPath.row) {
                case 2:
                    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
                    cell.detailTextLabel.text = @"새로운 항목만";
                    break;
                
                case 3:
                    cell.accessoryView = switcher;
                    break;
                    
                default:
                    cell.selectionStyle = UITableViewCellSelectionStyleDefault;
                    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
                    break;
            }
            break;
            
        case 4:
            cell.detailTextLabel.text = @"2.5.2 (1140.8)";
            break;
            
        default:
            cell.accessoryView = switcher;
            break;
    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 2) {
        if (indexPath.row == 0) {
            
            SetRefreshViewController *setRefreshVC = [self.storyboard instantiateViewControllerWithIdentifier:@"SetRefreshViewController"];
            [self.navigationController pushViewController:setRefreshVC animated:YES];
        }
        if (indexPath.row == 1) {
            
            EpisodeViewController *episodeVC = [self.storyboard instantiateViewControllerWithIdentifier:@"EpisodeViewController"];
            [self.navigationController pushViewController:episodeVC animated:YES];
        }
    }
    
    self.selectedCell = indexPath;
    [tableView reloadData];
}





- (void)switchValueChange:(UISwitch *)sender
{
    
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSArray *headerData = [self.settingList objectForKey:@"headerData"];
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
