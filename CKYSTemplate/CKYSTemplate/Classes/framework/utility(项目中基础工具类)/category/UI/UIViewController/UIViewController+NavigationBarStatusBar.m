//
//  UIViewController+NavigationBarStatusBar.m
//  CKYSPlatform
//
//  Created by Yan on 2018/11/1.
//  Copyright © 2018 ckys. All rights reserved.
//

#import "UIViewController+NavigationBarStatusBar.h"

@implementation UIViewController (NavigationBarStatusBar)

- (void)setNavigationBarStatusBarHidden:(BOOL)hidden {
    if (hidden) {
        [[UIApplication sharedApplication] setStatusBarHidden:hidden withAnimation:UIStatusBarAnimationSlide];
    } else {
        [[UIApplication sharedApplication] setStatusBarHidden:hidden withAnimation:UIStatusBarAnimationSlide];
    }
}

@end
