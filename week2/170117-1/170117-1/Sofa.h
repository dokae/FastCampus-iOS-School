//
//  Sofa.h
//  170117-1
//
//  Created by 박재한 on 2017. 1. 17..
//  Copyright © 2017년 noName. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Sofa : NSObject


@property id color;
@property id material;
@property id width;
@property id softness;

- (id)sit;
- (id)lay;

@end
