//
//  UIViewController+NetworkTipView.m
//  CKYSPlatform
//
//  Created by Yan on 2018/7/17.
//  Copyright © 2018年 ckys. All rights reserved.
//

#import "UIViewController+NetworkTipView.h"
#import "objc/runtime.h"
#import "CKYSNetTipView.h"

@interface UIViewController ()

@property (nonatomic, strong) CKYSNetTipView *networkTipView;

@property (nonatomic, strong) UIView *parentView;

@end

@implementation UIViewController (NetworkTipView)

static const void *CKYSNetTipViewKey = &CKYSNetTipViewKey;

static const void *CKYSNetTipParentViewKey = &CKYSNetTipParentViewKey;

- (void)setParentView:(UIView *)parentView {
    objc_setAssociatedObject(self, CKYSNetTipParentViewKey, parentView, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIView *)parentView {
    return objc_getAssociatedObject(self, CKYSNetTipParentViewKey);
}

- (void)setNetworkTipView:(CKYSNetTipView *)networkTipView {
    objc_setAssociatedObject(self, CKYSNetTipViewKey, networkTipView, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (CKYSNetTipView *)networkTipView {
    return objc_getAssociatedObject(self, CKYSNetTipViewKey);
}

- (void)initNetworkTipViewWithParentView:(UIView *)parentView frame:(CGRect)frame {
    if (!self.networkTipView) {
        self.networkTipView = [[CKYSNetTipView alloc] initWithFrame:frame parentView:parentView];
        self.parentView = parentView;
        [self.parentView sendSubviewToBack:self.networkTipView];
    }
}

- (void)showNetworkTipView {
    self.networkTipView.hidden = false;
    [self.parentView bringSubviewToFront:self.networkTipView];
}

- (void)dismissNetworkTipView {
    self.networkTipView.hidden = true;
}

@end
