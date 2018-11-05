//
//  CKYSNetTipView.m
//  CKYSPlatform
//
//  Created by Yan on 2018/7/17.
//  Copyright © 2018年 ckys. All rights reserved.
//

#import "CKYSNetTipView.h"
#import "Masonry.h"

@implementation CKYSNetTipView

- (instancetype)initWithFrame:(CGRect)frame parentView:(UIView *)parentView {

    self = [super initWithFrame:frame];
    if (self) {
        [parentView addSubview:self];
        [self initUIWithFrame:frame];
    }
    return self;
}

- (void)initUIWithFrame:(CGRect)frame {

    self.backgroundColor = [UIColor colorWithHexString:@"#fffbe0"];
    
    UIImageView *imageViewNetworkTip = [UIImageView new];
    [self addSubview:imageViewNetworkTip];
    imageViewNetworkTip.image = [UIImage imageNamed:@"ckys_network_tip_image"];
    [imageViewNetworkTip mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.mas_centerY);
        make.left.mas_equalTo(10);
        make.width.height.mas_equalTo(13);
    }];
    
    UILabel *labelNetworkTip = [UILabel new];
    labelNetworkTip.text = NetWorkNotReachable;
    labelNetworkTip.textColor = [UIColor colorWithHexString:@"#db291d"];
    labelNetworkTip.font = MAIN_NAMETITLE_FONT;
    [self addSubview:labelNetworkTip];
    [labelNetworkTip mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(imageViewNetworkTip.mas_centerY);
        make.left.equalTo(imageViewNetworkTip.mas_right).offset(10);
    }];
}

@end
