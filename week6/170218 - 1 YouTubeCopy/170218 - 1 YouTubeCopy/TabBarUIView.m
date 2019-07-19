//
//  TabBarUIView.m
//  170218 - 1 YouTubeCopy
//
//  Created by Park Jae Han on 2017. 2. 17..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "TabBarUIView.h"

@implementation TabBarUIView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.layer.borderWidth = 1;
        self.layer.borderColor = [UIColor grayColor].CGColor;
        self.backgroundColor = [UIColor whiteColor];
        
    }
    return self;
}


@end
