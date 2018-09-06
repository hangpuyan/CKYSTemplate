//
//  CKYSNetworkErrorView.m
//  CKYSPlatform
//
//  Created by Yan on 2018/7/18.
//  Copyright © 2018年 ckys. All rights reserved.
//

#import "CKYSNetworkErrorView.h"
#import "Masonry.h"

@implementation CKYSNetworkErrorView {
    __weak id<CKYSNetworkErrorViewDelegate> _delegate;
}

- (instancetype)initWithFrame:(CGRect)frame parentView:(UIView *)parentView delegate:(id<CKYSNetworkErrorViewDelegate>)delegate {
    _delegate = delegate;
    return [self initWithFrame:frame parentView:parentView];
}

- (instancetype)initWithFrame:(CGRect)frame parentView:(UIView *)parentView {
    self = [super initWithFrame:frame parentView:parentView];
    if (self) {
        [parentView addSubview:self];
        [self mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.bottom.left.right.equalTo(parentView);
        }];
        self.labelTitle.text = @"网络状态待提升，点击重试";
        self.imageViewCenter.image = [UIImage imageNamed:@"ckys_network_error_image_placeholder"];
        [self.imageViewCenter mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_top).with.offset(AdaptedHeight(268));
            make.centerX.equalTo(self);
        }];
        [self.labelTitle mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.imageViewCenter.mas_bottom).with.offset(20);
            make.centerX.equalTo(self);
            make.left.equalTo(self.mas_left).with.offset(50);
            make.right.equalTo(self.mas_right).with.offset(-50);
        }];
        
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(private_networkErrorImageViewCenterTapAction:)];
        self.imageViewCenter.userInteractionEnabled = true;
        [self.imageViewCenter addGestureRecognizer:tap];
    }
    return self;
}

- (void)private_networkErrorImageViewCenterTapAction:(UITapGestureRecognizer *)sender {
    if (_delegate && [_delegate respondsToSelector:@selector(networkErrorViewAction)]) {
        [_delegate networkErrorViewAction];
    }
}

@end
