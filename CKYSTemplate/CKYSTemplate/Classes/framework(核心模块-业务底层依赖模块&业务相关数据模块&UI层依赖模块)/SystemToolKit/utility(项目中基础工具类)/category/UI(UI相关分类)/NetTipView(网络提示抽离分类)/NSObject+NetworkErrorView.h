//
//  NSObject+NetworkErrorView.h
//  CKYSPlatform
//
//  Created by Yan on 2018/7/18.
//  Copyright © 2018年 ckys. All rights reserved.
//

#import <Foundation/Foundation.h>

@class HPNetworkErrorView;

@protocol HPNetworkErrorViewDelegate;

@interface NSObject (NetworkErrorView)

@property (nonatomic, strong, readonly) HPNetworkErrorView *networkErrorView;

- (void)initNetworkErrorViewWithParentView:(UIView *)parentView frame:(CGRect)frame delegate:(id<HPNetworkErrorViewDelegate>)delegate;

- (void)dismissNetworkErrorView;

- (void)showNetworkErrorView;

@end

