//
//  ALSAppDelegate.m
//  ALSTransactionSdkKit
//
//  Created by yangzmpang on 12/15/2017.
//  Copyright (c) 2017 yangzmpang. All rights reserved.
//

#import "ALSAppDelegate.h"
#import <ALSInterfaceSdk/ALSTransactionKit.h>

@interface ALSAppDelegate ()<ALSThirdPartyPaymentInitDelegate>

@end

@implementation ALSAppDelegate

- (ALSThirdPartyPaymentInfitInfo*)thirdPartyPaymentInitInfoPlatform:(ALSTKPaymentPlatform)platform
{
    // 写入支付宝字段
    if ( platform == ALSTKPaymentPlatformAlipay ){
        ALSThirdPartyPaymentInfitInfo* info = [ALSThirdPartyPaymentInfitInfo new];
        info.platform = platform;
        info.appKey = @"";
        info.appSecret = @"";
        
        // 这里要在info.plist 里边写的一样的
        info.urlSecheme = @"";
        return info;
    }
    
    // 微信字段信息
    if ( platform == ALSTKPaymentPlatformWechat ){
        ALSThirdPartyPaymentInfitInfo* info2 = [ALSThirdPartyPaymentInfitInfo new];
        info2.platform = platform;
        info2.appKey = @"";
        info2.appSecret = @"";
        info2.urlSecheme = @"";
        return info2;
    }
    
    return nil;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
     [ALS_PAYMENT_WECHAT setInitDelegate:self];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
