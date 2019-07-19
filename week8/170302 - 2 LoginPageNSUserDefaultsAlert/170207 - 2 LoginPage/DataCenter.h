//
//  DataCenter.h
//  170207 - 2 LoginPage
//
//  Created by Park Jae Han on 2017. 2. 24..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataCenter : NSObject

@property NSString *userID;
@property NSString *userPW;

+ (instancetype)sharedInstance;


@end
