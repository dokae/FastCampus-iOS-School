//
//  NewAnnotation.h
//  170307 - 1 MapView
//
//  Created by Park Jae Han on 2017. 3. 7..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface NewAnnotation : NSObject
<MKAnnotation>

@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;

- (void)setCoordinate:(CLLocationCoordinate2D)newCoordinate;

@end
