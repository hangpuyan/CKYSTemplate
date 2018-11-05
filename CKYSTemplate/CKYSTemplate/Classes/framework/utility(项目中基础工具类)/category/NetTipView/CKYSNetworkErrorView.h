//
//  CKYSNetworkErrorView.h
//  CKYSPlatform
//
//  Created by Yan on 2018/7/18.
//  Copyright © 2018年 ckys. All rights reserved.
//

#import "CKYSPalceHolderView.h"

@class CKYSNetworkErrorView;

@protocol CKYSNetworkErrorViewDelegate <NSObject>

- (void)networkErrorViewAction;

@end

@interface CKYSNetworkErrorView : CKYSPalceHolderView

- (instancetype)initWithFrame:(CGRect)frame parentView:(UIView *)parentView delegate:(id<CKYSNetworkErrorViewDelegate>)delegate;

@end

