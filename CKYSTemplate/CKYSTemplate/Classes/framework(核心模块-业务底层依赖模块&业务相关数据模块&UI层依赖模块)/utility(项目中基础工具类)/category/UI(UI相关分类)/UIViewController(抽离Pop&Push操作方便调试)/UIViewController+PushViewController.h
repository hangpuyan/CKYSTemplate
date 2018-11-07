//
//  UIViewController+PushViewController.h
//  CKYSPlatform
//
//  Created by Yan on 2018/10/24.
//  Copyright © 2018 ckys. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

/** 系统 nav push */
@interface UIViewController (PushViewController)

+ (void)pushToObjViewController:(UIViewController *)objViewController animated:(BOOL)animated fromViewController:(UIViewController *)fromViewController;

@end

NS_ASSUME_NONNULL_END
