//
//  LayoutUIView.m
//  170218 - 1 YouTubeCopy
//
//  Created by Park Jae Han on 2017. 2. 17..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "NavBarUIView.h"

@implementation NavBarUIView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.backgroundColor = [UIColor colorWithRed:230/255.0 green:33/255.0 blue:23/255.0 alpha:1];
        [self createSubViews];
    }
    return self;
}


- (void)createSubViews
{
    UILabel *logo = [[UILabel alloc] initWithFrame:CGRectMake(20, 23, 100, 30)];
    logo.text = @"YouTube";
    logo.textColor = [UIColor whiteColor];
    [self addSubview:logo];
    
    UIImageView *utilMenu = [[UIImageView alloc] initWithFrame:CGRectMake(self.frame.size.width - 131, 25, 111, 26)];
    utilMenu.image = [UIImage imageNamed:@"utilmenu"];
    [self addSubview:utilMenu];
}


@end
