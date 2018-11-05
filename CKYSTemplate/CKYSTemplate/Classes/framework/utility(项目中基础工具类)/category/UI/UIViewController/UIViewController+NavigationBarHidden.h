//
//  UIViewController+NavigationBarHidden.h
//  CKYSPlatform
//
//  Created by Yan on 2018/10/22.
//  Copyright © 2018 ckys. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

/** 系统 navBar hidden */
@interface UIViewController (NavigationBarHidden)

- (void)setObjViewControllerNavigationBarHidden:(BOOL)hidden;

@end

NS_ASSUME_NONNULL_END
