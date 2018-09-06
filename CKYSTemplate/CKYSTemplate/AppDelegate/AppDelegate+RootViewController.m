//
//  AppDelegate+RootViewController.m
//  CKYSTemplate
//
//  Created by Yan on 2018/9/6.
//  Copyright © 2018年 YY. All rights reserved.
//

#import "AppDelegate+RootViewController.h"
#import "ViewController.h"

@implementation AppDelegate (RootViewController)

- (void)initRootViewController {
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = [[ViewController alloc]init];
    [self.window makeKeyAndVisible];
}

@end
