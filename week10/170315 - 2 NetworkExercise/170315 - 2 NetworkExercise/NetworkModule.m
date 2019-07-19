//
//  NetworkModule.m
//  170315 - 2 NetworkExercise
//
//  Created by Park Jae Han on 2017. 3. 17..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "NetworkModule.h"
#import "DataCenter.h"

@implementation NetworkModule

//포스트 쓰기
- (void)getPostWithPage:(NSInteger *)page {
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    
    NSString *url = [NSString stringWithFormat:@"%@?page=%ld", POSTLIST_URL, page];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];

    request.HTTPMethod = @"GET";
    
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        //메소드 시작
        
    }];
    
    
    
    NSString *boundary = @"YOUR_BOUNDARY_STRING";
    NSMutableData *body = [NSMutableData data];
    [body appendData:[[NSString stringWithFormat:@"\r\n--%@\r\n", boundary] dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[[NSString stringWithFormat:@"Content-Disposition: form-data; name=\"photo\"; filename=\"%@.jpg\"\r\n", self.message.photokey] dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[@"Content-Type: application/octet-steam\r\n\r\n" dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[NSData dataWithData:imageData]];
    [body appendData:[[NSString stringWithFormat:@"\r\n--%@\r\n", boundary] dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[[NSString stringWithFormat:@"Content-Disposition: form-data; name=\"photo\"; filename=\"%@.jpg\"\r\n", self.message.photokey] dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[[NSString stringWithFormat:@"\r\n--%@\r\n", boundary] dataUsingEncoding:NSUTF8StringEncoding]];

    
}




//로그인
- (void)networkWithSignInID:(NSString *)userID userPW:(NSString *)userPW completionBlock:(CompletionBlock)block {

    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    
    NSURL *url = [NSURL URLWithString:LOGIN_URL];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    
    NSLog(@"net module::%@, %@", userID, userPW);
    
    NSString *noteDataString = [NSString stringWithFormat:@"username=%@&password=%@", userID, userPW];
    request.HTTPBody = [noteDataString dataUsingEncoding:NSUTF8StringEncoding];
    request.HTTPMethod = @"POST";
    
    NSURLSessionUploadTask *postDataTask = [session uploadTaskWithRequest:request fromData:nil completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
  
        //메소드 시작
        
        NSDictionary *responsData = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:nil];
        NSInteger statusCode = [(NSHTTPURLResponse *)response statusCode];
        
        if (error != nil) {
            
            NSLog(@"net module::시스템에러 %@", error);
            
        } else {
            
            if (statusCode == 200) {
                
                [DataCenter sharedInstance].userToken = [responsData objectForKey:@"key"];
                
                NSLog(@"network module::::token:::: %@",[responsData objectForKey:@"key"]);
                NSLog(@"network module::::data:::: %@", responsData);
                
                block(YES);
                
            } else if (statusCode == 400) {
                
                NSLog(@"net module::id pw 다시입력");
                NSLog(@"net module::token:::: %@",[responsData objectForKey:@"key"]);
                NSLog(@"net module::data:::: %@", responsData);
                
                block(NO);
            }
            
        } //메소드 끝
    }];
    
    [postDataTask resume];
}


//로그아웃
- (void)networkSignOutWithToken:(NSString *)token completionBlock:(CompletionBlock)block {
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    
    NSURL *url = [NSURL URLWithString:LOGOUT_URL];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    
    NSString *noteDataString = [NSString stringWithFormat:@"Authorization=Token %@", [DataCenter sharedInstance].userToken];
    request.HTTPBody = [noteDataString dataUsingEncoding:NSUTF8StringEncoding];
    request.HTTPMethod = @"POST";
    
    NSURLSessionUploadTask *postDataTask = [session uploadTaskWithRequest:request fromData:nil completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        
        //메소드 시작
        
        NSDictionary *responsData = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:nil];
        NSInteger statusCode = [(NSHTTPURLResponse *)response statusCode];
        
        if (error != nil) {
            
            NSLog(@"net module::시스템에러 %@", error);
            
        } else {
            
            if (statusCode == 200) {

                [DataCenter sharedInstance].userToken = nil;
                NSLog(@"network module::token:::: %@",[responsData objectForKey:@"key"]);
                NSLog(@"network module::data:::: %@", responsData);
                NSLog(@"network module::로그아웃 성공");
                block(YES);
                
            } else if (statusCode == 401) {
                
                NSLog(@"network module::토큰 유효하지 않음");
                block(NO);
            }
            
        } //메소드 끝

    }];
    
    [postDataTask resume];
}


//가입
- (void)networkWithSignUpID:(NSString *)userID userPW:(NSString *)userPW userVPW:(NSString *)userVPW completionBlock:(CompletionBlock)block {
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    
    NSURL *url = [NSURL URLWithString:SIGNUP_URL];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    
    NSString *noteDataString = [NSString stringWithFormat:@"username=%@&password1=%@&password2=%@", userID, userPW, userVPW];
    request.HTTPBody = [noteDataString dataUsingEncoding:NSUTF8StringEncoding];
    request.HTTPMethod = @"POST";
    
    NSURLSessionUploadTask *postDataTask = [session uploadTaskWithRequest:request fromData:nil completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        
        //메소드 시작
        
        NSDictionary *responsData = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:nil];
        NSInteger statusCode = [(NSHTTPURLResponse *)response statusCode];
        
        if (error != nil) {
            
            NSLog(@"net module::시스템에러 %@", error);
            
        } else {
            
            if (statusCode == 201) {
                
                [DataCenter sharedInstance].userToken = [responsData objectForKey:@"key"];
                NSLog(@"network module::token:::: %@",[responsData objectForKey:@"key"]);
                NSLog(@"network module::data:::: %@", responsData);
                
                block(YES);
                
            } else if (statusCode == 400) {
                
                if ([responsData objectForKey:@"username"]) {
                    
                    NSLog(@"해당 사용자 이름은 이미 존재합니다");
                
                } else if ([responsData objectForKey:@"non_field_errors"]) {
                    
                    NSLog(@"비밀번호 불일치");
                    
                } else if ([responsData objectForKey:@"password2"]) {
                 
                    NSLog(@"비번 확인 항목을 채워주십시오.");
                }
                
                block(NO);
            }
        } //메소드 끝
    }];
    
    [postDataTask resume];
}






@end
