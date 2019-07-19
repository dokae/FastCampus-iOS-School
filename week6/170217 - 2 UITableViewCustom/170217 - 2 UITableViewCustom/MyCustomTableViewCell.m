//
//  MyCustomTableViewCell.m
//  170217 - 2 UITableViewCustom
//
//  Created by Park Jae Han on 2017. 2. 17..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "MyCustomTableViewCell.h"

@interface MyCustomTableViewCell ()

@property (nonatomic, weak) UIImageView *profileImgView;
@property (nonatomic, weak) UIView *profileTextContainer;
@property (nonatomic, weak) UILabel *titleLB;
@property (nonatomic, weak) UILabel *nameLB;
@property (nonatomic, weak) UILabel *profileLB;

@end

@implementation MyCustomTableViewCell


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self createSubViews];
//        [self updateLayout];
        [self test];
    }
    return self;
}


- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    //for interface builder > 스토리보드용
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


- (void)layoutSubviews
{
    [self updateLayout];
}

- (void)createSubViews
{
    UIImageView *profileImgView = [[UIImageView alloc] init];
    profileImgView.clipsToBounds = YES;
    [self.contentView addSubview:profileImgView];
    self.profileImgView = profileImgView;
    
    UIView *profileTextContainer = [[UIView alloc] init];
    [self.contentView addSubview:profileTextContainer];
    self.profileTextContainer = profileTextContainer;
    
    UILabel *titleLB = [[UILabel alloc] init];
    titleLB.text = @"Profile";
    titleLB.textColor = [UIColor grayColor];
    titleLB.textAlignment = NSTextAlignmentRight;
    titleLB.font = [UIFont systemFontOfSize:9];
    [profileTextContainer addSubview:titleLB];
    self.titleLB = titleLB;
    
    UILabel *nameLB = [[UILabel alloc] init];
    nameLB.textColor = [UIColor blueColor];
    nameLB.textAlignment = NSTextAlignmentRight;
    nameLB.font = [UIFont systemFontOfSize:20];
    [profileTextContainer addSubview:nameLB];
    self.nameLB = nameLB;
    
    UILabel *profileLB = [[UILabel alloc] init];
    profileLB.numberOfLines = 0;
    profileLB.lineBreakMode = NSLineBreakByWordWrapping;
    [self.contentView addSubview:profileLB];
    self.profileLB = profileLB;
    
}


- (void)updateLayout
{
    const CGFloat MARGIN = 15;
    
    CGFloat offsetX = MARGIN;
    CGFloat offsetY = MARGIN;
    
    self.profileImgView.frame = CGRectMake(offsetX, offsetY, 100, 100);
    self.profileImgView.layer.cornerRadius = self.profileImgView.frame.size.width / 2;
    
    offsetX += self.profileImgView.frame.size.width;
    
    self.profileTextContainer.frame = CGRectMake(offsetX, offsetY, self.frame.size.width - offsetX - MARGIN, 100);
    offsetX = MARGIN;
    offsetY += self.profileImgView.frame.size.height;
    
    self.profileLB.frame = CGRectMake(offsetX, offsetY, self.frame.size.width - (MARGIN * 2), self.frame.size.height - offsetY - MARGIN);
}


- (void)test
{
    self.backgroundColor = [UIColor blackColor];
    self.profileImgView.backgroundColor = [UIColor yellowColor];
    self.profileTextContainer.backgroundColor = [UIColor redColor];
    self.profileLB.backgroundColor = [UIColor greenColor];
}

- (void)setDataWithIMGName:(NSString *)imgUrlStr name:(NSString *)nameStr msg:(NSString *)msgStr
{
    self.profileImgView.image = [UIImage imageNamed:imgUrlStr];
    self.nameLB.text = nameStr;
    self.profileLB.text = msgStr;
}


@end
