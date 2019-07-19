//
//  CustomTableViewCell.m
//  170218 - 1 YouTubeCopy
//
//  Created by Park Jae Han on 2017. 2. 17..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "CustomTableViewCell.h"

@interface CustomTableViewCell ()

@property (nonatomic, weak) UIView *videoThumbnailContainer;
@property (nonatomic, weak) UIImageView *videoThumbnail;
@property (nonatomic, weak) UILabel *runningTime;
@property (nonatomic, weak) UIView *progressBarBg;
@property (nonatomic, weak) UIView *progressBar;
@property (nonatomic, weak) UIView *videoInfoContainer;
@property (nonatomic, weak) UIImageView *profileImg;
@property (nonatomic, weak) UIView *metaInfoContainer;
@property (nonatomic, weak) UILabel *videoTitle;
@property (nonatomic, weak) UILabel *castName;
@property (nonatomic, weak) UILabel *viewOfVideo;
@property (nonatomic, weak) UILabel *uploadDate;
@property (nonatomic, weak) UIView *divLine;


@end



@implementation CustomTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        [self creativeSubViews];
        [self updateLayoutColor];
        
    }
    return self;
}


- (void)layoutSubviews
{
    [self updateLayouts];
}

- (void)creativeSubViews
{
    //썸네일 컨테이너
    UIView *videoThumbnailContainer = [[UIView alloc] init];
    [self.contentView addSubview:videoThumbnailContainer];
    self.videoThumbnailContainer = videoThumbnailContainer;
    
        //비디오 썸네일
        UIImageView *videoThumbnail = [[UIImageView alloc] init];
        [videoThumbnailContainer addSubview:videoThumbnail];
        self.videoThumbnail = videoThumbnail;
    
            //런닝타임
            UILabel *runningTime = [[UILabel alloc] init];
            runningTime.clipsToBounds = YES;
            runningTime.layer.cornerRadius = 3;
            [videoThumbnail addSubview:runningTime];
            self.runningTime = runningTime;
    
        //비디오 프로그레스바BG
        UIView *progressBarBg = [[UIView alloc] init];
        [videoThumbnailContainer addSubview:progressBarBg];
        self.progressBarBg = progressBarBg;
    
        //비디오 프로그레스바
        UIView *progressBar = [[UIView alloc] init];
        [videoThumbnailContainer addSubview:progressBar];
        self.progressBar = progressBar;
    
    //하단 컨테이너
    UIView *videoInfoContainer = [[UIView alloc] init];
    [self.contentView addSubview:videoInfoContainer];
    self.videoInfoContainer = videoInfoContainer;
    
        //프로필 이미지
        UIImageView *profileImg = [[UIImageView alloc] init];
        profileImg.clipsToBounds = YES;
        [videoInfoContainer addSubview:profileImg];
        self.profileImg = profileImg;
        
        //메타정보 컨테이너
        UIView *metaInfoContainer = [[UIView alloc] init];
        [videoInfoContainer addSubview:metaInfoContainer];
        self.metaInfoContainer = metaInfoContainer;

            //타이틀 텍스트
            UILabel *videoTitle = [[UILabel alloc] init];
            videoTitle.textColor = [UIColor blackColor];
            [metaInfoContainer addSubview:videoTitle];
            self.videoTitle = videoTitle;

            //방송국 이름
            UILabel *castName = [[UILabel alloc] init];
            castName.textColor = [UIColor grayColor];
            castName.font = [UIFont systemFontOfSize:13];
            [metaInfoContainer addSubview:castName];
            self.castName = castName;

            //조회수
            UILabel *viewOfVideo = [[UILabel alloc] init];
            viewOfVideo.textColor = [UIColor grayColor];
            viewOfVideo.font = [UIFont systemFontOfSize:13];
            [metaInfoContainer addSubview:viewOfVideo];
            self.viewOfVideo = viewOfVideo;

            //업데이트날짜
            UILabel *uploadDate = [[UILabel alloc] init];
            uploadDate.textColor = [UIColor grayColor];
            uploadDate.font = [UIFont systemFontOfSize:13];
            [metaInfoContainer addSubview:uploadDate];
            self.uploadDate = uploadDate;
    
    UIView *divLine = [[UIView alloc] init];
    [self.contentView addSubview:divLine];
    self.divLine = divLine;
}


- (void)updateLayouts
{
    const CGFloat MARGIN = 15;
    const CGFloat PADDING = 10;
    
    CGFloat videoThumbnailContainerHeight = 200;
    CGFloat progressBarHeight = 4;
    CGFloat videoInfoContainerHeight = 40;
    CGFloat profileImgSize = 40;
    CGFloat videoTitleHeight = 20;
    CGFloat metaSize = 100;
    
    self.videoThumbnailContainer.frame = CGRectMake(MARGIN, MARGIN, self.frame.size.width - (MARGIN * 2), videoThumbnailContainerHeight);
    
        self.videoThumbnail.frame = CGRectMake(0, 0, self.videoThumbnailContainer.frame.size.width, self.videoThumbnailContainer.frame.size.height);
        self.runningTime.frame = CGRectMake(self.videoThumbnailContainer.frame.size.width - 40, videoThumbnailContainerHeight - 33, 35, 24);
        self.progressBarBg.frame = CGRectMake(0, videoThumbnailContainerHeight - progressBarHeight, self.videoThumbnailContainer.frame.size.width, progressBarHeight);
        self.progressBar.frame = CGRectMake(0, videoThumbnailContainerHeight - progressBarHeight, 150, progressBarHeight);
    
    self.videoInfoContainer.frame = CGRectMake(MARGIN, videoThumbnailContainerHeight + MARGIN + PADDING, self.frame.size.width - (MARGIN * 2), videoInfoContainerHeight);
    
        self.profileImg.frame = CGRectMake(0, 0, profileImgSize, profileImgSize);
        self.profileImg.layer.cornerRadius = profileImgSize / 2;
        self.metaInfoContainer.frame = CGRectMake(profileImgSize + MARGIN, 0, self.videoThumbnailContainer.frame.size.width - profileImgSize - PADDING, videoInfoContainerHeight);
    
            self.videoTitle.frame = CGRectMake(0, 0, self.metaInfoContainer.frame.size.width, videoTitleHeight);
            self.castName.frame = CGRectMake(0, videoTitleHeight, metaSize, videoInfoContainerHeight - videoTitleHeight);
            self.viewOfVideo.frame = CGRectMake(metaSize, videoTitleHeight, metaSize, videoInfoContainerHeight - videoTitleHeight);
            self.uploadDate.frame = CGRectMake(metaSize * 2, videoTitleHeight, metaSize, videoInfoContainerHeight - videoTitleHeight);
    
    self.divLine.frame = CGRectMake(0, MARGIN * 2 + videoThumbnailContainerHeight + videoInfoContainerHeight + PADDING, self.frame.size.width, 1);
    
}


- (void)updateLayoutColor
{
//    self.videoInfoContainer.backgroundColor = [UIColor grayColor];
    self.videoThumbnail.backgroundColor = [UIColor lightGrayColor];
    self.runningTime.backgroundColor = [UIColor colorWithRed:0/255 green:0/255 blue:0/255 alpha:0.5];
    self.runningTime.layer.borderColor = [UIColor colorWithWhite:1 alpha:0.8].CGColor;
    self.runningTime.layer.borderWidth = 1;
    
    self.progressBarBg.backgroundColor = [UIColor grayColor];
    self.progressBar.backgroundColor = [UIColor redColor];

    self.profileImg.backgroundColor = [UIColor grayColor];
    self.divLine.backgroundColor = [UIColor lightGrayColor];
//    self.metaInfoContainer.backgroundColor = [UIColor greenColor];
//    self.videoTitle.backgroundColor = [UIColor magentaColor];
//    self.castName.backgroundColor = [UIColor blueColor];
//    self.viewOfVideo.backgroundColor = [UIColor greenColor];
//    self.uploadDate.backgroundColor = [UIColor yellowColor];
}


- (void)setDataWithVideoThumbnail:(NSString *)thumbnailStr
                       profileImg:(NSString *)imgUrlStr
                       videoTitle:(NSString *)titleStr
                         castName:(NSString *)castNameStr
                      viewOfVideo:(NSString *)viewStr
                       uploadDate:(NSString *)dateStr
{
    self.videoThumbnail.image = [UIImage imageNamed:thumbnailStr];
    self.profileImg.image = [UIImage imageNamed:imgUrlStr];
    self.videoTitle.text = titleStr;
    self.castName.text = castNameStr;
    self.viewOfVideo.text = viewStr;
    self.uploadDate.text = dateStr;
}









- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
