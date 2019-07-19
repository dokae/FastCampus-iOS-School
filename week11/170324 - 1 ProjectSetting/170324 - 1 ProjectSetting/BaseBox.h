//
//  BaseBox.h
//  170324 - 1 ProjectSetting
//
//  Created by Park Jae Han on 2017. 3. 24..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#ifndef BaseBox_h
#define BaseBox_h

static NSInteger const Num = 10;
static double const PI = 3.14;
static NSString * const Name = @"name";

#define UIColorFromRGB(rgbValue) [UIColor \colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0] // 사용 UIColor *myColor = UIColorFromRGB(헥사값);

#endif /* BaseBox_h */
