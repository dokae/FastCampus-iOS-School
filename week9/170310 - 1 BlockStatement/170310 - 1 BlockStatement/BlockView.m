//
//  BlockView.m
//  170310 - 1 BlockStatement
//
//  Created by Park Jae Han on 2017. 3. 10..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "BlockView.h"
#import "ViewController.h"

@interface BlockView ()

@property NSString*(^blockParam)(void);


@end

@implementation BlockView

-(instancetype)initWithAction:(NSString*(^)(void))blockParam {
    
    self = [super init];
    
    
    self.blockParam = blockParam;
    
    return self;
}

-(IBAction)didClickTest:(id)sender {
    
    NSString *result = self.blockParam();
}


@end
