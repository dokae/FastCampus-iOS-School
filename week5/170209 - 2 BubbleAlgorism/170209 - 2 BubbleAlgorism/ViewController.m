//
//  ViewController.m
//  170209 - 2 BubbleAlgorism
//
//  Created by Park Jae Han on 2017. 2. 9..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    NSMutableArray *unSortedList = [[NSMutableArray alloc] initWithObjects:@"4",@"3",@"5",@"1",@"2",nil];

    
    for (NSInteger i = 0; i < unSortedList.count; i++) {
        
        for (NSInteger j = 0; j < unSortedList.count - i - 1; j++) {
   
            NSInteger firstNum = [[unSortedList objectAtIndex:j] integerValue];
            NSInteger secondNum = [[unSortedList objectAtIndex:j + 1] integerValue];
            NSInteger temp;
            
            if (firstNum > secondNum) {

                [unSortedList replaceObjectAtIndex:j withObject:[NSString stringWithFormat:@"%ld",secondNum]];
                [unSortedList replaceObjectAtIndex:j+1 withObject:[NSString stringWithFormat:@"%ld",firstNum]];
                
                temp = firstNum;
                firstNum = secondNum;
                firstNum = temp;
                


        }
    }
  
    
}
    NSLog(@"%@", unSortedList);

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
