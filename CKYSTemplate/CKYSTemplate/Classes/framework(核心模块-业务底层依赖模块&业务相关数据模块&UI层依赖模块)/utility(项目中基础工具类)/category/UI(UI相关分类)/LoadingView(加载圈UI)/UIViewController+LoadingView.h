//
//  UIViewController+LoadingView.h
//  CKYSPlatform
//
//  Created by Yan on 2018/7/12.
//  Copyright © 2018年 ckys. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (LoadingView)

@property (nonatomic, strong, readonly) UIView *loadingView;

- (void)startLoading;

- (void)stopLoading;

@end
