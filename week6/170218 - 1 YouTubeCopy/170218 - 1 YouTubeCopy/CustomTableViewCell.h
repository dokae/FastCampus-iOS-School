//
//  CustomTableViewCell.h
//  170218 - 1 YouTubeCopy
//
//  Created by Park Jae Han on 2017. 2. 17..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell

- (void)setDataWithVideoThumbnail:(NSString *)thumbnailStr
                       profileImg:(NSString *)imgUrlStr
                       videoTitle:(NSString *)titleStr
                         castName:(NSString *)castNameStr
                      viewOfVideo:(NSString *)viewStr
                       uploadDate:(NSString *)dateStr;

@end
