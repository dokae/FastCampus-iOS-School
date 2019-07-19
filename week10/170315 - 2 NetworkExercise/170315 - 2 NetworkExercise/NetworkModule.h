//
//  NetworkModule.h
//  170315 - 2 NetworkExercise
//
//  Created by Park Jae Han on 2017. 3. 17..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DataCenter.h"


@interface NetworkModule : NSObject

- (void)networkWithSignInID:(NSString *)userID userPW:(NSString *)userPW completionBlock:(CompletionBlock)block;
- (void)networkSignOutWithToken:(NSString *)token completionBlock:(CompletionBlock)block;
- (void)networkWithSignUpID:(NSString *)userID userPW:(NSString *)userPW userVPW:(NSString *)userVPW completionBlock:(CompletionBlock)block;


@end
