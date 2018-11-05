//
//  AppDelegate+UI.m
//  CKYSTemplate
//
//  Created by Yan on 2018/11/5.
//  Copyright © 2018 YY. All rights reserved.
//

#import "AppDelegate+UI.h"
#import "ViewController.h"

@implementation AppDelegate (UI)

- (void)initRootViewController {
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = [[ViewController alloc]init];
    [self.window makeKeyAndVisible];
}


@end
