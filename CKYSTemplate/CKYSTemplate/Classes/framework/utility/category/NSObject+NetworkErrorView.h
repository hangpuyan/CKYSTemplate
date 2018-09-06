//
//  NSObject+NetworkErrorView.h
//  CKYSPlatform
//
//  Created by Yan on 2018/7/18.
//  Copyright © 2018年 ckys. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CKYSNetworkErrorView;

@protocol CKYSNetworkErrorViewDelegate;

@interface NSObject (NetworkErrorView)

@property (nonatomic, strong, readonly) CKYSNetworkErrorView *networkErrorView;

- (void)initNetworkErrorViewWithParentView:(UIView *)parentView frame:(CGRect)frame delegate:(id<CKYSNetworkErrorViewDelegate>)delegate;

- (void)dismissNetworkErrorView;

- (void)showNetworkErrorView;

@end

