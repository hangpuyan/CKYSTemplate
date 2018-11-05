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

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self initBugly];
    [self initRootViewController];
    return YES;
}

@end
