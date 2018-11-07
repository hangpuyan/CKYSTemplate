//
//  AppDelegate+UI.m
//  CKYSTemplate
//
//  Created by Yan on 2018/11/5.
//  Copyright © 2018 YY. All rights reserved.
//

#import "AppDelegate+UI.h"
#import "A_ViewController.h"

@implementation AppDelegate (UI)

- (void)initRootViewController {
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = [[A_ViewController alloc]init];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
}


@end
