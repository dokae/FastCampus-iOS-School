//
//  DataCenter.h
//  170315 - 2 NetworkExercise
//
//  Created by Park Jae Han on 2017. 3. 15..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import <Foundation/Foundation.h>

static NSString * const USER_ID = @"userID";
static NSString * const USER_PW = @"userPW";
static NSString * const USER_TOKEN = @"userToken";
static NSString * const LOGIN_URL = @"https://fc-ios.lhy.kr/api/member/login/";
static NSString * const SIGNUP_URL = @"https://fc-ios.lhy.kr/api/member/signup/";
static NSString * const LOGOUT_URL = @"https://fc-ios.lhy.kr/api/member/logout/";
static NSString * const POSTLIST_URL = @"https://fc-ios.lhy.kr/api/post/";


typedef void (^CompletionBlock)(BOOL isSuccess);

@interface DataCenter : NSObject

+ (instancetype)sharedInstance;

@property NSString *userID;
@property NSString *userPW;
@property NSString *userToken;

- (void)loadUserToken;
- (void)signInUserID:(NSString *)userID userPW:(NSString *)userPW completionBlock:(CompletionBlock)block;
- (void)signUpUserID:(NSString *)userID userPW:(NSString *)userPW userVPW:(NSString *)userVPW completionBlock:(CompletionBlock)block;
- (void)signOutUserToken:(NSString *)token completionBlock:(CompletionBlock)block;



@end
