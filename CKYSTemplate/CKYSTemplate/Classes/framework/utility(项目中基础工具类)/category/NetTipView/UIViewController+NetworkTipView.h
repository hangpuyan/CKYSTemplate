//
//  UIViewController+NetworkTipView.h
//  CKYSPlatform
//
//  Created by Yan on 2018/7/17.
//  Copyright © 2018年 ckys. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CKYSNetTipView;

#define CKYS_NETWORK_TIP_VIEW_HEIGHT 44

@interface UIViewController (NetworkTipView)

@property (nonatomic, strong, readonly) CKYSNetTipView *networkTipView;

- (void)initNetworkTipViewWithParentView:(UIView *)parentView frame:(CGRect)frame;

- (void)dismissNetworkTipView;

- (void)showNetworkTipView;

@end
