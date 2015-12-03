//
//  AppDelegate.m
//  Funnyfood
//
//  Created by Nguyễn Duy Kiều on 11/19/15.
//  Copyright © 2015 Nguyen Duy Kieu. All rights reserved.
//

#import "AppDelegate.h"
#import "MainScreen.h"
#import "SaleOffScreen.h"
#import "AddressScreen.h"
#import "AboutScreen.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    MainScreen *mainscreen = [[MainScreen alloc] initWithNibName:@"MainScreen" bundle:nil];
    mainscreen.title =@"Funny Food";
    UINavigationController *navimain = [[UINavigationController alloc] initWithRootViewController:mainscreen];
    navimain.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Menu" image:[UIImage imageNamed:@"menuWhite"] selectedImage:[UIImage imageNamed:@"menuWhite"]];
    
    SaleOffScreen *salemain = [[SaleOffScreen alloc] init];
    salemain.title =@"Sale Off";
    UINavigationController *naviSaleOff = [[UINavigationController alloc] initWithRootViewController:salemain];
    [naviSaleOff.tabBarItem setTitle:@"Title"];
    [naviSaleOff.tabBarItem setImage:[UIImage imageNamed:@"sale"]];
    [naviSaleOff.tabBarItem setSelectedImage:[UIImage imageNamed:@"sale"]];
    
    AddressScreen *addressScreen = [[AddressScreen alloc] init];
    addressScreen.title =@"Address";
    UINavigationController *naviAddress = [[UINavigationController alloc] initWithRootViewController:addressScreen];
    [naviAddress.tabBarItem setTitle:@"Address"];
    [naviAddress.tabBarItem setImage:[UIImage imageNamed:@"shopWhite2"]];
    [naviAddress.tabBarItem setSelectedImage:[UIImage imageNamed:@"shopWhite2"]];
    
    AboutScreen *aboutScreen = [[AboutScreen alloc] init];
    aboutScreen.title =@"About";
    UINavigationController *naviAbout = [[UINavigationController alloc] initWithRootViewController:aboutScreen];
    [naviAbout.tabBarItem setTitle:@"About"];
    [naviAbout.tabBarItem setImage:[UIImage imageNamed:@"aboutWhite"]];
    [naviAbout.tabBarItem setSelectedImage:[UIImage imageNamed:@"aboutWhite"]];
    
    UITabBarController *tabbar = [[UITabBarController alloc] init ];
    tabbar .viewControllers = @[navimain,naviSaleOff,naviAddress,naviAbout];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds ]];
    self.window.rootViewController = tabbar;
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
