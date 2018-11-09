//
//  NSObject+NetworkErrorView.m
//  CKYSPlatform
//
//  Created by Yan on 2018/7/18.
//  Copyright © 2018年 ckys. All rights reserved.
//

#import "NSObject+NetworkErrorView.h"
#import "objc/runtime.h"
#import "HPNetworkErrorView.h"

@interface UIViewController ()

@property (nonatomic, strong) HPNetworkErrorView *networkErrorView;

@property (nonatomic, weak) UIView *parentView;

@end

@implementation NSObject (NetworkErrorView)

static const void *CKYSNetErrorViewKey = &CKYSNetErrorViewKey;

static const void *CKYSNetErrorParentViewKey = &CKYSNetErrorParentViewKey;

- (void)setParentView:(UIView *)parentView {
    objc_setAssociatedObject(self, CKYSNetErrorParentViewKey, parentView, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIView *)parentView {
    return objc_getAssociatedObject(self, CKYSNetErrorParentViewKey);
}

- (void)setNetworkErrorView:(HPNetworkErrorView *)networkErrorView {
    objc_setAssociatedObject(self, CKYSNetErrorViewKey, networkErrorView, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (HPNetworkErrorView *)networkErrorView {
    return objc_getAssociatedObject(self, CKYSNetErrorViewKey);
}

- (void)initNetworkErrorViewWithParentView:(UIView *)parentView frame:(CGRect)frame delegate:(id<HPNetworkErrorViewDelegate>)delegate {
    if (!self.networkErrorView) {
        self.networkErrorView = [[HPNetworkErrorView alloc] initWithFrame:frame parentView:parentView delegate:delegate];
        self.parentView = parentView;
        [self.parentView sendSubviewToBack:self.networkErrorView];
    }
}

- (void)dismissNetworkErrorView {
    self.networkErrorView.hidden = true;
}

- (void)showNetworkErrorView {
    self.networkErrorView.hidden = false;
    [self.parentView bringSubviewToFront:self.networkErrorView];
}

@end
