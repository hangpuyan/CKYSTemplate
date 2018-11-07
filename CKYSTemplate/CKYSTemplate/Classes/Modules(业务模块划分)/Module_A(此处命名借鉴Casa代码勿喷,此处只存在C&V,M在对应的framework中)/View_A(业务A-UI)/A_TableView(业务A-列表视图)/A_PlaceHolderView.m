//
//  A_PlaceHolderView.m
//  CKYSPlatform
//
//  Created by Yan on 2018/10/19.
//  Copyright © 2018 ckys. All rights reserved.
//

#import "A_PlaceHolderView.h"
#import "Masonry.h"
#import "ScreenConst.h"

CGFloat A_PlaceHolderTopOffsetConst = 45;

@implementation A_PlaceHolderView

- (void)setFrameEssenceType {
    [self.imageViewCenter mas_updateConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_top).with.offset(197-A_PlaceHolderTopOffsetConst);
        make.centerX.equalTo(self);
    }];
}

- (void)setSearchEmptyType {
    self.labelTitle.text = @"XXX";
}

- (instancetype)initWithFrame:(CGRect)frame parentView:(UIView *)parentView {
    self = [super initWithFrame:frame parentView:parentView];
    if (self) {
        [parentView addSubview:self];
        [self mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.bottom.left.right.equalTo(parentView);
            make.height.equalTo(@(SCREEN_HEIGHT-SCREEN_STATUS_AND_NAVIGATION_HEIGHT-BOTTOM_BAR_HEIGHT-A_PlaceHolderTopOffsetConst));
        }];
        self.labelTitle.text = @"XXXXXXXXXXXXXXXXXXXX";
        self.imageViewCenter.image = [UIImage imageNamed:@""];
        [self.imageViewCenter mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_top).with.offset(197);
            make.centerX.equalTo(self);
        }];
        [self.labelTitle mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.imageViewCenter.mas_bottom).with.offset(20);
            make.centerX.equalTo(self);
            make.left.equalTo(self.mas_left).with.offset(20);
            make.right.equalTo(self.mas_right).with.offset(-20);
        }];                
    }
    return self;
}

@end
