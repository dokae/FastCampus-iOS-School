//
//  ViewController.m
//  170216 - 2 UITableViewExercise
//
//  Created by Park Jae Han on 2017. 2. 16..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "ViewController.h"
#import "DataCenter.h"

@interface ViewController ()
<UITableViewDataSource, UITableViewDelegate>
@property (nonatomic) NSArray *list;
@property (nonatomic) NSArray *image;
@property (nonatomic) NSArray *array;
@property (nonatomic) NSDictionary *dic;


@end

@implementation ViewController

- (void)viewDidLoad {
    
    UITableView *tv = [[UITableView alloc] initWithFrame:CGRectMake(0, 50, self.view.frame.size.width, self.view.frame.size.height - 50) style:UITableViewStylePlain];
    tv.delegate = self;
    tv.dataSource = self;
    [self.view addSubview: tv];

//    self.dic = @{@"B" : @[@"Bear", @"Black Swan", @"Buffalo"],
//                 @"C" : @[@"Camel", @"Cockatoo"],
//                 @"D" : @[@"Dog", @"Donkey"],
//                 @"E" : @[@"Emu"],
//                 @"G" : @[@"Giraffe", @"Greater Rhea"],
//                 @"H" : @[@"Hippopotamus", @"Horse"],
//                 @"K" : @[@"Koala"],
//                 @"L" : @[@"Lion", @"Llama"],
//                 @"M" : @[@"Manatus", @"Meerkat"],
//                 @"P" : @[@"Panda", @"Peacock", @"Pig", @"Platypus", @"Polar Bear"],
//                 @"R" : @[@"Rhinoceros"],
//                 @"S" : @[@"Seagull"],
//                 @"T" : @[@"Tasmania Devil"],
//                 @"W" : @[@"Whale", @"Whale Shark", @"Wombat"]};
    
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    UITableViewCell *selectedCell = [tableView cellForRowAtIndexPath:indexPath];
    NSLog(@"%@ 선택됨", selectedCell.textLabel.text);
}
    
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[self.dic allValues] count];
}
    

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if (cell == nil) {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
        
        UISwitch *switcher = [[UISwitch alloc] initWithFrame:CGRectMake(10, 10, 10, 10)];
        [switcher addTarget:self action:@selector(switchValueChange:) forControlEvents:UIControlEventValueChanged];
        cell.accessoryView = switcher;
        switcher.on = NO; //기본은 no
    }
    
//    NSDictionary *data = [self.array objectAtIndex:indexPath.row];

    cell.textLabel.text = [[self.dic allValues] objectAtIndex:indexPath.section];
//    NSString *imgName = [[self.array objectAtIndex:indexPath.row] objectForKey:@"imgUrl"];
//    cell.imageView.image = [UIImage imageNamed:imgName];

    return cell;
}
    
    
- (void)switchValueChange:(UISwitch *)sender
{
    NSLog(@"change switch");
}
    

    
    
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [[self.dic allKeys] count];
}
    
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return [[self.dic allKeys] objectAtIndex:section];
}
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
//#import "ViewController.h"
//#import "DataCenter.h"
//
//@interface ViewController ()
//<UITableViewDataSource, UITableViewDelegate>
//@property (nonatomic) NSArray *list;
//@property (nonatomic) NSArray *image;
//@property (nonatomic) NSArray *array;
//
//
//@end
//
//@implementation ViewController
//
//- (void)viewDidLoad {
//    
//    UITableView *tv = [[UITableView alloc] initWithFrame:CGRectMake(0, 50, self.view.frame.size.width, self.view.frame.size.height - 50) style:UITableViewStylePlain];
//    tv.delegate = self;
//    tv.dataSource = self;
//    [self.view addSubview: tv];
//    
//    self.array = @[@{@"sectionName":@"A", @"name":@"사자", @"imgUrl":@"lion.jpg"},
//                   @{@"sectionName":@"B", @"name":@"곰", @"imgUrl":@"bear.jpg"},
//                   @{@"sectionName":@"C", @"name":@"오리", @"imgUrl":@"duck.jpg"},
//                   @{@"sectionName":@"D", @"name":@"사자", @"imgUrl":@"lion.jpg"},
//                   @{@"sectionName":@"E", @"name":@"곰", @"imgUrl":@"bear.jpg"},
//                   @{@"sectionName":@"F", @"name":@"오리", @"imgUrl":@"duck.jpg"}];
//    
//    
//}
//
//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    [tableView deselectRowAtIndexPath:indexPath animated:YES];
//    UITableViewCell *selectedCell = [tableView cellForRowAtIndexPath:indexPath];
//    NSLog(@"%@ 선택됨", selectedCell.textLabel.text);
//}
//
//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
//{
//    return self.array.count;
//}
//
//
//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
//    
//    if (cell == nil) {
//        
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
//        
//        UISwitch *switcher = [[UISwitch alloc] initWithFrame:CGRectMake(10, 10, 10, 10)];
//        [switcher addTarget:self action:@selector(switchValueChange:) forControlEvents:UIControlEventValueChanged];
//        cell.accessoryView = switcher;
//        switcher.on = NO; //기본은 no
//    }
//    
//    //    NSDictionary *data = [self.array objectAtIndex:indexPath.row];
//    
//    cell.textLabel.text = [[self.array objectAtIndex:indexPath.row] objectForKey:@"name"];
//    NSString *imgName = [[self.array objectAtIndex:indexPath.row] objectForKey:@"imgUrl"];
//    cell.imageView.image = [UIImage imageNamed:imgName];
//    
//    return cell;
//}
//
//
//- (void)switchValueChange:(UISwitch *)sender
//{
//    NSLog(@"change switch");
//}
//
//
//
//
//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
//{
//    return self.array.count;
//}
//
//- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
//{
//    return [[self.array objectAtIndex:section] objectForKey:@"sectionName"];
//}






    
    








//#import "ViewController.h"
//
//@interface ViewController ()
//<UITableViewDataSource, UITableViewDelegate>
//@property (nonatomic) NSArray *list;
//@property (nonatomic) NSArray *image;
//
//@end
//
//@implementation ViewController
//
//- (void)viewDidLoad {
//    [super viewDidLoad];
//    // Do any additional setup after loading the view, typically from a nib.
//    
//    UITableView *tf1 = [[UITableView alloc] initWithFrame:CGRectMake(0, 60, self.view.frame.size.width, self.view.frame.size.height - 60) style:UITableViewStylePlain];
//    tf1.dataSource = self;
//    tf1.delegate = self;
//    [self.view addSubview:tf1];
//
//    
//    self.list = @[@"Emu", @"Giraffe", @"Greater Rhea", @"Hippopotamus", @"Horse", @"Koala", @"Lion"];
//    self.image = @[@"emu.jpg", @"giraffe.jpg", @"greater_rhea.jpg", @"hippopotamus.jpg", @"horse.jpg", @"koala.jpg", @"lion.jpg"];
//    
//}
//
//
//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
//{
//    return self.list.count;
//}
//
//
//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
//    
//    if (cell == nil) {
//        
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
//    }
//    
//    cell.textLabel.text = [self.list objectAtIndex:indexPath.row];
//    NSString *imgName = [NSString stringWithFormat:@"animals/%@", [self.image objectAtIndex:indexPath.row]];
//    cell.imageView.image = [UIImage imageNamed:imgName];
//    
////    switch (indexPath.row) {
////        case 0:
////            
////            cell.accessoryType = UITableViewCellAccessoryDetailButton;
////            break;
////            
////        case 1:
////            
////            cell.accessoryType = UITableViewCellAccessoryCheckmark;
////            break;
////        
////        case 3:
////            
////            cell.accessoryType = UITableViewCellAccessoryCheckmark;
////            break;
////            
////        default:
////            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
////            break;
////    }
//    
//    return cell;
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
