//
//  DataCenter.m
//  170315 - 2 NetworkExercise
//
//  Created by Park Jae Han on 2017. 3. 15..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "DataCenter.h"
#import "NetworkModule.h"

@interface DataCenter ()
//@property NetworkModule *networkModule;

@end

@implementation DataCenter


+ (instancetype)sharedInstance {
    
    static DataCenter *dataCenter = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        dataCenter = [[DataCenter alloc] init];
    });
    
    return dataCenter;
}


- (instancetype)init {
    
    self = [super init];
    if (self) {
        
        //        [self loadUserToken];
    }
    return self;
}


- (void)loadUserToken {
    
    if ([[NSUserDefaults standardUserDefaults] objectForKey:USER_TOKEN] != nil) {
        
        self.userToken = [[NSUserDefaults standardUserDefaults] objectForKey:USER_TOKEN];
    }
}


- (void)signInUserID:(NSString *)userID userPW:(NSString *)userPW completionBlock:(CompletionBlock)block {
    
    self.userID = userID;
    self.userPW = userPW;
    
    //네트워크센터에 블록넘김
    NetworkModule *networkModule = [[NetworkModule alloc] init];
    [networkModule networkWithSignInID:userID userPW:userPW completionBlock:block];
    
}


- (void)signUpUserID:(NSString *)userID userPW:(NSString *)userPW userVPW:(NSString *)userVPW completionBlock:(CompletionBlock)block {
    
    self.userID = userID;
    self.userPW = userPW;
    
    //네트워크센터에 블록넘김
    NetworkModule *networkModule = [[NetworkModule alloc] init];
    [networkModule networkWithSignUpID:userID userPW:userPW userVPW:userVPW completionBlock:block];
}


- (void)signOutUserToken:(NSString *)token completionBlock:(CompletionBlock)block {
    
    //네트워크센터에 블록넘김
    NetworkModule *networkModule = [[NetworkModule alloc] init];
    [networkModule networkSignOutWithToken:token completionBlock:block];
}

@end
