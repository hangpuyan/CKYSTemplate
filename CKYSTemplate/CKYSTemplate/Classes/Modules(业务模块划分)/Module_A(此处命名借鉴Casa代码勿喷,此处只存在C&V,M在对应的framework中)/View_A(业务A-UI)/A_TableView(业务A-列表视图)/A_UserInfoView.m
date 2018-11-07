//
//  A_UserInfoView.m
//  CKYSPlatform
//
//  Created by Yan on 2018/10/31.
//  Copyright © 2018 ckys. All rights reserved.
//

#import "A_UserInfoView.h"
#import "UILabel+Category.h"
#import "Masonry.h"
#import "ScreenConst.h"

CGFloat A_UserInfoViewHeight = 50;

@implementation A_UserInfoView {
    UIImageView *_imageViewHeader;
    UILabel *_labelTitleUserName;
}

- (void)setUserInfoData:(A_ViewerUserInfoItem *)userInfoItem {
   
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self initUI];
    }
    return self;
}

- (void)initUI {
    self.backgroundColor = [UIColor clearColor];
    _imageViewHeader = [[UIImageView alloc] init];
    [self addSubview:_imageViewHeader];
    _labelTitleUserName = [UILabel labelWithTitle:@"" titleFont:15 backgroundColor:[UIColor clearColor] textAlignment:NSTextAlignmentLeft ract:CGRectZero numberOfLines:1 textColor:[UIColor colorWithRed:255.0/255.0 green:255.0/255.0 blue:255.0/255.0 alpha:1]];
    [self addSubview:_labelTitleUserName];
    [_imageViewHeader mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_top).with.offset(13);
        make.left.equalTo(self.mas_left).with.offset((SCREEN_WIDTH*0.5-23-10));
        make.width.height.equalTo(@(23));
    }];
    _imageViewHeader.layer.cornerRadius = 23 * 0.5;
    _imageViewHeader.layer.masksToBounds = YES;
    
    [_labelTitleUserName mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(_imageViewHeader);        make.left.equalTo(_imageViewHeader.mas_right).with.offset(10);
        make.right.equalTo(self.mas_right).with.offset(-20);
    }];
}

@end
