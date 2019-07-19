//
//  DataCenter.m
//  170309 - 2 AddChildView
//
//  Created by Park Jae Han on 2017. 3. 9..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "DataCenter.h"

@implementation DataCenter

+ (instancetype)singleton {
    
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
        
        [self settingData];
    }
    return self;
}


- (void)settingData {
    
    self.locationList = @[@"제주도",
                          @"전라남도",
                          @"경상북도",
                          @"경상남도",
                          @"충청북도",
                          @"경기도",
                          @"서울",
                          @"강원도",
                          @"충청남도",@"경기도",
                          @"서울",
                          @"강원도",
                          @"충청남도",
                          ];
}


@end
