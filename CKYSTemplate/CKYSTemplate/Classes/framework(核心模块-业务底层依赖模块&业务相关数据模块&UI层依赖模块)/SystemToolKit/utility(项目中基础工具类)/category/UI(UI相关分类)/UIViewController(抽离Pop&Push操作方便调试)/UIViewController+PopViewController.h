//
//  UIViewController+PopViewController.h
//  CKYSPlatform
//
//  Created by Yan on 2018/10/22.
//  Copyright © 2018 ckys. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

/** 系统 nav pop */
@interface UIViewController (PopViewController)

+ (void)objViewController:(UIViewController *)objViewController popViewControllerAnimated:(BOOL)animated;

@end

NS_ASSUME_NONNULL_END
