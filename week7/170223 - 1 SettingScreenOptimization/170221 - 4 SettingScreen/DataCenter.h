//
//  DataCenter.h
//  170221 - 4 SettingScreen
//
//  Created by Park Jae Han on 2017. 2. 23..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataCenter : NSObject

+ (instancetype)sharedInstance;
@property NSDictionary *settingList;
@property NSArray *refreshTime;
@property NSArray *downloadData;
@property NSString *selectedItem;
@property NSString *checked;
@property NSInteger indexCell;
@property NSInteger indexCell2;


- (void)setSettingIndex:(NSInteger)index;
- (void)setSettingIndex2:(NSInteger)index;


@end
