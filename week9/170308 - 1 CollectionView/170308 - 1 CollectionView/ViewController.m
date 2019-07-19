//
//  ViewController.m
//  170308 - 1 CollectionView
//
//  Created by Park Jae Han on 2017. 3. 8..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UICollectionViewDelegate, UICollectionViewDataSource>
@end

@implementation ViewController

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return 6;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    
    if (cell == nil) {
        
    }
}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
