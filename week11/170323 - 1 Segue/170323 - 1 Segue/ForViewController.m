//
//  ForViewController.m
//  170323 - 1 Segue
//
//  Created by Park Jae Han on 2017. 3. 23..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "ForViewController.h"

@interface ForViewController ()
<UITableViewDelegate, UITableViewDataSource>
@property NSArray *list;

@end

@implementation ForViewController

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.list.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 100;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    if (cell == nil) {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    
    cell.textLabel.text = [self.list objectAtIndex:indexPath.row];
    
    return cell;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.list = @[@"123123", @"sdfe", @"dfgg", @"sfsdf", @"lkl", @"sefj", @"sfefgfbdfb", @"hjyjrgh", @"sdfgefeg", @"erkjgkreg"];

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
