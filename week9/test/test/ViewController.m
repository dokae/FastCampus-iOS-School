//
//  ViewController.m
//  test
//
//  Created by Park Jae Han on 2017. 3. 9..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "ViewController.h"

BOOL showMenu;

@interface ViewController ()
<UITableViewDelegate, UITableViewDataSource>

@property UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain];
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];
    self.tableView = tableView;
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"accountMenu"];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"accountSubMenu"];
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        // Account Menu
        return 1;
    }
    if (showMenu) {
        // Profile/Private Account/Change Password
        return 3;
    }
    // Hidden Account Menu
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell;
    
    if (indexPath.section == 0) {
        cell = [tableView dequeueReusableCellWithIdentifier:@"accountMenu"];
        cell.textLabel.text = @"Account";
    }
    else
    {
        cell = [tableView dequeueReusableCellWithIdentifier:@"accountSubMenu"];
        switch (indexPath.row) {
            case 0:
                cell.textLabel.text = @"Profile";
                break;
            case 1:
                cell.textLabel.text = @"Private Account";
                break;
            case 2:
                cell.textLabel.text = @"Change Password";
                break;
                
            default:
                break;
        }
    }


    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        // Click on Account Menu
        showMenu = !showMenu;
        [tableView reloadSections:[NSIndexSet indexSetWithIndex:1] withRowAnimation:UITableViewRowAnimationAutomatic];
    
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
