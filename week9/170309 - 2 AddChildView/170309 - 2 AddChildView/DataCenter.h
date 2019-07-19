//
//  DataCenter.h
//  170309 - 2 AddChildView
//
//  Created by Park Jae Han on 2017. 3. 9..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataCenter : NSObject

+ (instancetype)singleton;
- (void)settingData;

@property NSArray *locationList;


@end
