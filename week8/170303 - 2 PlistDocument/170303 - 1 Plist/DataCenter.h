//
//  DataCenter.h
//  170303 - 1 Plist
//
//  Created by Park Jae Han on 2017. 3. 3..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import <Foundation/Foundation.h>

static NSString * const CONTACT_NAME = @"name";
static NSString * const CONTACT_NUMBER = @"number";

@interface DataCenter : NSObject

+ (instancetype)sharedInstance;
- (void)settingData;
- (void)saveWithName:(NSString *)name number:(NSString *)number;


@property NSMutableArray *data;
@property NSString *docuPath;

@end
