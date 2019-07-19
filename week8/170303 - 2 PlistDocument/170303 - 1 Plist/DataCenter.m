//
//  DataCenter.m
//  170303 - 1 Plist
//
//  Created by Park Jae Han on 2017. 3. 3..
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
        
        [self settingData];
    }
    return self;
}


- (void)settingData {
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES); //도큐먼트 패스 가져옴
    NSString *basePath = [paths objectAtIndex:0]; //패스의 0번 인덱스는 도큐먼트 폴더
    self.docuPath = [basePath stringByAppendingPathComponent:@"contact"]; //도큐먼트에 해당 이름의 경로 추가
    NSFileManager *fileManager = [NSFileManager defaultManager]; //파일매니저 생성
    if (![fileManager fileExistsAtPath:self.docuPath]) { //파일매니저가 도큐먼트 폴더에 없을 경우
        
        NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"Sample" ofType:@"plist"]; //번들경로 가져옴
        [fileManager copyItemAtPath:bundlePath toPath:self.docuPath error:nil]; //번들을 도큐먼트로 복사
    }
    
    self.data = [NSMutableArray arrayWithContentsOfFile:self.docuPath]; //도큐파일 가져옴 -> 데이터 로드
}


- (void)saveWithName:(NSString *)name number:(NSString *)number {
    
    NSDictionary *dict = @{CONTACT_NAME:name, CONTACT_NUMBER:number}; //매개변수값을 딕셔너리로 받고
    [self.data addObject:dict]; //데이터 어레이에 추가
    [self.data writeToFile:self.docuPath atomically:NO]; //도큐패스에 저장
}





@end
