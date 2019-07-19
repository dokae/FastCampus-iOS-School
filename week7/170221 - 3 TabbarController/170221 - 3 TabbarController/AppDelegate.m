//
//  AppDelegate.m
//  170221 - 3 TabbarController
//
//  Created by Park Jae Han on 2017. 2. 21..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "SecViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    ViewController *vc1 = [[ViewController alloc] init];
    SecViewController *vc2 = [[SecViewController alloc] init];
    
    UITabBarController *tabbar = [[UITabBarController alloc] init];
    tabbar.viewControllers = @[vc1, vc2];
    
    UIView *i1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
    i1.backgroundColor = [UIColor redColor];
    
    UITabBarItem *item1 = [[UITabBarItem alloc] initWithTitle:@"aaaa" image:[UIImage imageNamed:@"btn"] selectedImage:[UIImage imageNamed:@"btn"]];
    UITabBarItem *item2 = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemSearch tag:0];
    vc1.tabBarItem = item1;
    vc2.tabBarItem = item2;
    
    self.window.rootViewController = tabbar;
    [self.window makeKeyAndVisible];
    
    
    
    
//    UIStoryboard *sto = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UINavigationController *navi = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"UINavigationController"];
    
    self.window.rootViewController = navi;
//    [self.window makeKeyAndVisible];
    
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
