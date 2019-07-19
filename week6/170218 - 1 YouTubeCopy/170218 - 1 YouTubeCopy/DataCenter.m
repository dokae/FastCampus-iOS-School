//
//  DataCenter.m
//  170218 - 1 YouTubeCopy
//
//  Created by Park Jae Han on 2017. 2. 20..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "DataCenter.h"

@interface DataCenter ()

@property (nonatomic,strong) NSDictionary *contents;


@end

@implementation DataCenter

///////////////////////////////Init Method//////////////////////////////////////
//싱글턴 객체 만들기 >> 지금 고민하지 마세요!!
+ (instancetype)defaultData
{
    static DataCenter *dataCenter = nil;
    
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
        [self setContentsData];
    }
    return self;
}

- (void)setContentsData
{
    //contents = dictionary
    //비디오썸네일, 프로필이미지, 런닝타임, 타이틀, 방송국, 조회수, 업로드시간
    self.contents = @{@"Content" : @[@"image.png", @"image.png", @"3:23", @"타이틀텍스트", @"276뷰", @"1시간전"],
                      @"Content" : @[@"image.png", @"image.png", @"3:23", @"타이틀텍스트", @"276뷰", @"1시간전"],
                      @"Content" : @[@"image.png", @"image.png", @"3:23", @"타이틀텍스트", @"276뷰", @"1시간전"],
                      @"Content" : @[@"image.png", @"image.png", @"3:23", @"타이틀텍스트", @"276뷰", @"1시간전"],
                      @"Content" : @[@"image.png", @"image.png", @"3:23", @"타이틀텍스트", @"276뷰", @"1시간전"]};
}


@end
