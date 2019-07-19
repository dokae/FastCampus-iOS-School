//
//  ViewController.m
//  170209 - 1 ArrayDictionaryForIn
//
//  Created by Park Jae Han on 2017. 2. 9..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property UILabel *resultLB;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UILabel *resultLB = [[UILabel alloc] initWithFrame:CGRectMake(40, 50, 300, 35)];
    resultLB.backgroundColor = [UIColor grayColor];
    [self.view addSubview:resultLB];
    self.resultLB = resultLB;
    
    
/* 샘플
 
//    NSArray *list = [[NSArray alloc] initWithObjects:@"1",@"2",@"3",@"4",@"5",nil];
//    NSArray *list2 = @[@"1",@"2",@"3",@"4",@"5"];
    
//    NSDictionary *dic = [[NSDictionary alloc] initWithObjects:@[@"joo",@"joo1"] forKeys:@[@"key1",@"key2"]];
    NSDictionary *dic2 = @{@"key0":@"value0",@"key1":@"value1",@"key2":@"value2"};
    
//    for (NSInteger i = 0; i < list.count; i++) {
//        NSString *num = [list objectAtIndex:i];
//        NSLog(@"%@", num);
//    }
//    
//    for (NSString *num in list2) {
//        NSLog(@"%@", num);
//    }
    
    
    NSString *resultStr = @"";
    for (NSString *key in dic2) {
        NSString *str = [dic2 objectForKey:key];
        resultStr = [resultStr stringByAppendingString:str];
//        resultStr = [resultStr stringByAppendingString:[NSString stringWithFormat:@"%@ |", str]];
        
    }
    
    resultLB.text = resultStr;

*/
    
    NSArray *list = @[@"1",@"1",@"3",@"3",@"6",@"7",@"8"];
    NSMutableArray *resultList = [[NSMutableArray alloc] init];
    NSString *resultStr = @"";
    
    for (NSString *number in list) {
        
        if (![resultList containsObject:number]) {

            [resultList addObject:number];
            resultStr = [resultStr stringByAppendingString:number];
            
        }
    }

    resultLB.text = resultStr;

    
}


 
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
