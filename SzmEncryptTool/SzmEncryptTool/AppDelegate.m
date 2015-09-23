//
//  AppDelegate.m
//  SzmEncryptTool
//
//  Created by 宋志明 on 15/9/23.
//  Copyright (c) 2015年 宋志明. All rights reserved.
//

#import "AppDelegate.h"
#import "Md5.h"
#import "RSA.h"
#import "DES.h"

#define RSAPUBLICKEY @"-----BEGIN PUBLIC KEY-----\nMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC4QVQ+n54HCCFMHuGikTD0GMDxHgB8utMoszl955dcl6ax5YOMTa1z4Ib815/PGbRCBDv0vsG9jeGKY1pe9Qj3KHxJKiicJr3KV1R1vmzv1JdcRNTFVb6I9/awbJTNnTOvl8JZNm8QomdHlrQk8u3vP/Xdj217Mk4I4mTGDK1WFwIDAQAB\n-----END PUBLIC KEY-----"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    NSString *MD5Str = [Md5 getMd5_32Bit_String:@"ABC"];
    NSString *RSAStr = [RSA encryptString:@"ABC" publicKey:RSAPUBLICKEY];
    NSString *DESStr = [DES encryptUseDES:@"ABC" key:@"123"];
    NSLog(@"MD5Str====%@",MD5Str);
    NSLog(@"RSAStr====%@",RSAStr);
    NSLog(@"DESStr====%@",DESStr);
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
