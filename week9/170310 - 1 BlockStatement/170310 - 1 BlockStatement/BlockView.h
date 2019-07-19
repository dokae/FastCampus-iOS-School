//
//  BlockView.h
//  170310 - 1 BlockStatement
//
//  Created by Park Jae Han on 2017. 3. 10..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface BlockView : UIViewController

-(instancetype)initWithAction:(NSString*(^)(void))blockParam;

@end
