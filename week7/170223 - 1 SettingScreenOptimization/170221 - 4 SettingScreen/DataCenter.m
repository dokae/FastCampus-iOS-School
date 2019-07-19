//
//  DataCenter.m
//  170221 - 4 SettingScreen
//
//  Created by Park Jae Han on 2017. 2. 23..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "DataCenter.h"

@implementation DataCenter

+ (instancetype)sharedInstance
{
    static DataCenter *dataCenter;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        dataCenter = [[DataCenter alloc] init];
    });
    
    return dataCenter;
}


- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setSettingData];
        [self setRefreshData];
        [self setDownloadData];
        [self loadData];
        
    }
    return self;
}

- (void)loadData
{
    self.indexCell = 0;
    self.indexCell2 = 0;
    
    self.indexCell = [[NSUserDefaults standardUserDefaults] integerForKey:@"indexCell"];
    self.indexCell2 = [[NSUserDefaults standardUserDefaults] integerForKey:@"indexCell2"];
    
    //        if ([[NSUserDefaults standardUserDefaults] integerForKey:@"indexCell"]) {
    //            self.indexCell = [[NSUserDefaults standardUserDefaults] integerForKey:@"indexCell"];
    //            self.indexCell--;
    //        } else {
    //            self.indexCell = 2;
    //        }
    //
    //        self.indexCell2 = [[NSUserDefaults standardUserDefaults] integerForKey:@"indexCell2"]-1;

}


- (void)setSettingIndex:(NSInteger)index {
  
    self.indexCell = index;
    [[NSUserDefaults standardUserDefaults] setInteger:index forKey:@"indexCell"];
}

- (void)setSettingIndex2:(NSInteger)index {
    
    self.indexCell2 = index;
    [[NSUserDefaults standardUserDefaults] setInteger:index forKey:@"indexCell2"];
}


- (void)setSettingData
{
    NSArray *headerList = @[@"PODCAST 접근 허용", @"PODCAST 설정", @"PODCAST 기본 설정", @"손쉬운 사용", @""];
    NSArray *firstList  = @[@"백그라운드 앱 새로 고침", @"셀룰러 데이터"];
    NSArray *secondList = @[@"Podcast 동기화", @"Wi-Fi에서만 다운로드"];
    NSArray *thirdList  = @[@"새로 고치기", @"에피소드 제한", @"에피소드 다운로드", @"재생된 에피소드 삭제"];
    NSArray *fourthList = @[@"사용자 설정 색상"];
    NSArray *fifthList  = @[@"버전"];

    //self.isChecked = [[[NSUserDefaults standardUserDefaults] objectForKey:@"00"] boolValue];
    
    self.settingList = @{@"headerData"  : headerList,
                         @"rowData"     : @[firstList,secondList,thirdList,fourthList,fifthList]};
}

- (void)setRefreshData
{
    self.refreshTime = @[@"1시간마다", @"6시간마다", @"1일마다", @"1주일마다", @"수동"];
}

- (void)setDownloadData
{
    self.downloadData = @[@"끔", @"새로운 항목만", @"재생하지 않은 모든 항목"];
}

@end
