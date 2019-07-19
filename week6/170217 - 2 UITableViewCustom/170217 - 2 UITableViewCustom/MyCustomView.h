//
//  MyCustomView.h
//  170217 - 2 UITableViewCustom
//
//  Created by Park Jae Han on 2017. 2. 17..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyCustomView : UIView

- (instancetype)initWithFrame:(CGRect)frame;
- (void)updateLayout;
- (void)setDataWithIMGName:(NSString *)imgUrlStr name:(NSString *)nameStr msg:(NSString *)msgStr;


@end
