//
//  ViewController.m
//  170307 - 1 MapView
//
//  Created by Park Jae Han on 2017. 3. 7..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "ViewController.h"
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>
#import "NewAnnotation.h"


static const CGFloat BASE_LATITUDE = 37.454791;
static const CGFloat BASE_LONGITUDE = 127.129458;


@interface ViewController ()
<CLLocationManagerDelegate, MKMapViewDelegate>
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (nonatomic) CLLocationManager *locationManager;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    CLLocationCoordinate2D coordinate = CLLocationCoordinate2DMake(BASE_LATITUDE, BASE_LONGITUDE);
//    MKCoordinateSpan span = MKCoordinateSpanMake(0.05, 0.05);
//    
//    MKCoordinateRegion region = MKCoordinateRegionMake(coordinate, span);
//    [self.mapView setRegion:region];
    
    self.locationManager = [[CLLocationManager alloc] init];
    self.locationManager.delegate = self;
    self.locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    [self.locationManager requestWhenInUseAuthorization];
    [self.locationManager startUpdatingLocation];
    [self.mapView setShowsUserLocation:YES];

}

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations {
    
    CLLocationCoordinate2D coordinate = ((CLLocation *) locations.lastObject).coordinate;
    MKCoordinateSpan span = MKCoordinateSpanMake(0.01, 0.01);
    
    MKCoordinateRegion region = MKCoordinateRegionMake(coordinate, span);
    [self.mapView setRegion:region];

    NewAnnotation *annotation = [[NewAnnotation alloc] init];
    annotation.coordinate = coordinate;
    
    [self.mapView addAnnotation:annotation];
    [manager stopUpdatingLocation];
}

- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation {
    
    MKAnnotationView *newAnnotation = (MKAnnotationView *)[self.mapView dequeueReusableAnnotationViewWithIdentifier:@"pin"];
    
    if (newAnnotation == nil) {

        newAnnotation = [[MKAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"pin"];
        
        UIView *anView = [[UIView alloc] init];
        anView.backgroundColor = [UIColor blueColor];
        anView.frame = CGRectMake(0, 0, 30, 30);
        
        newAnnotation.frame = CGRectMake(0, 0, 30, 30);
        [newAnnotation addSubview:anView];
        
    }

    return newAnnotation;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
