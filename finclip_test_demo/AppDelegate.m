//
//  AppDelegate.m
//  finclip_test_demo
//
//  Created by Haley on 2020/11/19.
//

#import "AppDelegate.h"
#import "FATMainViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    
    FATMainViewController *mainVC = [[FATMainViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:mainVC];
    nav.navigationBar.translucent = NO;
    
    self.window.rootViewController = nav;
    [self.window makeKeyAndVisible];
    
    return YES;
}


@end
