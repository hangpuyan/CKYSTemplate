//
//  AppDelegate.m
//  CKYSTemplate
//
//  Created by Yan on 2018/7/5.
//  Copyright © 2018年 YY. All rights reserved.
//

#import "AppDelegate.h"
#import "AppDelegate+UI.h"
#import "AppDelegate+SDK.h"
#import "CKSystem.h"
#import "CKDefaultSystemImp.h"
#import "CKAppSystemInfo.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    //初始化DSDK
    [self initSDK];
    
    //初始化业务相关服务
    [CKSystem setSystem:[[CKDefaultSystemImp alloc] init:[[CKAppSystemInfo alloc] init]]];
    
    //初始化UI
    [self initRootViewController];
    
    return YES;
}

@end
