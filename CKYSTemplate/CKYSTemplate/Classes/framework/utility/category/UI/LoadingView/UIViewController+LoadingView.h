//
//  UIViewController+LoadingView.h
//  CKYSPlatform
//
//  Created by Yan on 2018/7/12.
//  Copyright © 2018年 ckys. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CKC_CustomProgressView;

@interface UIViewController (LoadingView)

@property (nonatomic, strong, readonly) CKC_CustomProgressView *loadingView;

- (void)startLoading;

- (void)stopLoading;

@end
