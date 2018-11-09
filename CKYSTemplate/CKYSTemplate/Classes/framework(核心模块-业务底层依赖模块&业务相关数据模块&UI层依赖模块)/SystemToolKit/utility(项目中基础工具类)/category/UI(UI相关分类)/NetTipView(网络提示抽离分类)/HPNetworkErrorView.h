//
//  HPNetworkErrorView.h
//  CKYSPlatform
//
//  Created by Yan on 2018/7/18.
//  Copyright © 2018年 ckys. All rights reserved.
//

#import "CKYSPalceHolderView.h"

@class HPNetworkErrorView;

@protocol HPNetworkErrorViewDelegate <NSObject>

- (void)networkErrorViewAction;

@end

@interface HPNetworkErrorView : CKYSPalceHolderView

- (instancetype)initWithFrame:(CGRect)frame parentView:(UIView *)parentView delegate:(id<HPNetworkErrorViewDelegate>)delegate;

@end

