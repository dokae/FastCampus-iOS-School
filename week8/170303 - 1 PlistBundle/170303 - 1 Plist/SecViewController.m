//
//  SecViewController.m
//  170303 - 1 Plist
//
//  Created by Park Jae Han on 2017. 3. 3..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

// 번들의 plist 로드

#import "SecViewController.h"
#import "DataCenter.h"

@interface SecViewController ()
<UITableViewDelegate, UITableViewDataSource>
@end

@implementation SecViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [[DataCenter sharedInstance].plist count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if (cell == nil) {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
    }
    
    cell.textLabel.text = [[DataCenter sharedInstance].plist[indexPath.row] objectForKey:@"name"];
    cell.detailTextLabel.text = [[DataCenter sharedInstance].plist[indexPath.row] objectForKey:@"number"];
    
    return cell;
    
}


@end
