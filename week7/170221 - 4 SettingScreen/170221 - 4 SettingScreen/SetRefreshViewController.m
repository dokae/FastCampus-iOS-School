//
//  SetRefreshViewController.m
//  170221 - 4 SettingScreen
//
//  Created by Park Jae Han on 2017. 2. 22..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "SetRefreshViewController.h"

@interface SetRefreshViewController ()
<UITableViewDelegate, UITableViewDataSource>
@property NSArray *refeshTime;
@property NSIndexPath *selectedPath;


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
    
    self.refeshTime = @[@"1시간마다", @"6시간마다", @"1일마다", @"1주일마다", @"수동"];
    
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

    cell.textLabel.text = [self.refeshTime objectAtIndex:indexPath.row];
    
    if ([indexPath isEqual:self.selectedPath]) {
        
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    
    } else {
        
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    self.selectedPath = indexPath;
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
