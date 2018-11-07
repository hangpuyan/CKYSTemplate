//
//  A_CellFooterView.m
//  CKYSPlatform
//
//  Created by Yan on 2018/10/17.
//  Copyright © 2018 ckys. All rights reserved.
//

#import "A_CellFooterView.h"
#import "Masonry.h"
#import "A_TableViewCellConst.h"
#import "UIButton+Title_Image.h"
#import "UIButton+ImageTitleSpacing.h"
#import "UIView+Category.h"
#import "UIButton+Title.h"
#import "A_Item.h"
#import "UILabel+Category.h"

CGFloat A_CellFooterViewHeightConst = 42;

#define A_TableViewCellFooterViewButtonOffsetConst 20
#define A_TableViewCellFooterViewButtonHeightConst 30

#define A_CellFooterViewButtonRewardImageNormal @"hp_cell_footer_button_reward_image_normal"
#define A_CellFooterViewButtonRewardImageHilight @"hp_cell_footer_button_reward_image_hilight"
#define A_CellFooterViewButtonRewardImageSelected @"hp_cell_footer_button_reward_image_selected"
#define A_CellFooterViewButtonRewardImageDisenabled @"hp_cell_footer_button_reward_image_disenabled"

#define A_CellFooterViewButtonSupportImageNormal @"hp_cell_footer_button_support_image_normal"
#define A_CellFooterViewButtonSupportImageHilight @"hp_cell_footer_button_support_image_selected"
#define A_CellFooterViewButtonSupportImageSelected @"hp_cell_footer_button_support_image_selected"
#define A_CellFooterViewButtonSupportImageDisenabled @"hp_cell_footer_button_support_image_disenabled"

#define A_CellFooterViewButtonShareImageNormal @"hp_cell_footer_button_share_image_normal"
#define A_CellFooterViewButtonShareImageHilight @"hp_cell_footer_button_share_image_hilight"
#define A_CellFooterViewButtonShareImageSelected @"hp_cell_footer_button_share_image_selected"
#define A_CellFooterViewButtonShareImageDisenabled @"hp_cell_footer_button_share_image_disenable"

#define A_CellFooterViewButtonShareTitleColorHilight    [UIColor colorWithRed:242/255.0 green:48/255.0 blue:48/255.0 alpha:1]
#define A_CellFooterViewButtonShareTitleColorNormal    [UIColor colorWithRed:103/255.0 green:103/255.0 blue:103/255.0 alpha:1]

@implementation A_CellFooterView {
    __weak id<A_CellFooterViewDelegate> _delegate;
    UIButton *_buttonReward;
    UIButton *_buttonSupport;
    UIButton *_buttonShare;
    UILabel *_labelRejectReason;
    A_Item *_item;
    UIImageView *_imageViewReward;
    UIImageView *_imageViewSupport;
    UILabel *_labelRewardValue;
    UILabel *_labelSupportValue;
}

- (void)setSourceCenterCellFooterViewData:(A_Item *)item {
    _item = item;
   
}

- (instancetype)initWithFrame:(CGRect)frame delegate:(id<A_CellFooterViewDelegate>)delegate {
    _delegate = delegate;
    return [self initWithFrame:frame];
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self initUI];
    }
    return self;
}

- (void)setSourceCenterCellFooterViewButtonAction:(A_CellFooterViewActionType)actionType selected:(BOOL)selected item:(A_Item *)item {
   
}

- (void)private_sourceCenterButtonRewardAction:(UIButton *)sender {
    
}

- (void)private_sourceCenterButtonSupportAction:(UIButton *)sender {
    sender.selected = !sender.selected;
    
}

- (void)private_sourceCenterButtonShareAction:(UIButton *)sender {

}

- (void)private_responseDelegate:(A_CellFooterViewActionType)actionType {
    if (_delegate && [_delegate respondsToSelector:@selector(sourceCenterCellFooterViewAction:)]) {
        [_delegate sourceCenterCellFooterViewAction:actionType];
    }
}

- (void)initUI {
    self.backgroundColor = [UIColor whiteColor];
    UIView *viewTopLine = [UIView instanceWithRect:CGRectMake(A_TableViewCellHeadTopOffsetConst, 0, self.frame.size.width-A_TableViewCellHeadTopOffsetConst, 0.5) backgroundColor:[UIColor colorWithRed:220/255.0 green:220/255.0 blue:220/255.0 alpha:1] parentView:self];
    [viewTopLine mas_makeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(self.mas_left).with.offset(0);
        make.right.equalTo(self.mas_right).with.offset(-0);
        make.top.equalTo(self);
        make.height.equalTo(@(0.5));
    }];
    
    _imageViewReward = [[UIImageView alloc] initWithImage:[UIImage imageNamed:A_CellFooterViewButtonRewardImageNormal]];
    [self addSubview:_imageViewReward];
    _imageViewSupport = [[UIImageView alloc] initWithImage:[UIImage imageNamed:A_CellFooterViewButtonSupportImageNormal]];
    [self addSubview:_imageViewSupport];
    
    [_imageViewReward mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.mas_left).with.offset(A_TableViewCellHeadTopOffsetConst);
        make.centerY.equalTo(self);
        make.height.equalTo(@(A_TableViewCellFooterViewButtonHeightConst));
        make.width.equalTo(@(17));
        make.height.equalTo(@(19));
    }];
    
    _labelRewardValue = [UILabel labelWithTitle:@"" titleFont:15 backgroundColor:[UIColor clearColor] textAlignment:NSTextAlignmentLeft ract:CGRectZero numberOfLines:1 textColor:A_CellFooterViewButtonShareTitleColorNormal];
    [self addSubview:_labelRewardValue];

    [_labelRewardValue mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(_imageViewReward.mas_right).with.offset(3);
        make.centerY.equalTo(self);
        make.height.equalTo(@(A_TableViewCellFooterViewButtonHeightConst));
    }];

    [_imageViewSupport mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(_labelRewardValue.mas_right).with.offset(A_TableViewCellHeadTopOffsetConst);
        make.centerY.equalTo(self);
        make.height.equalTo(@(A_TableViewCellFooterViewButtonHeightConst));
        make.width.equalTo(@(19));
        make.height.equalTo(@(17));
    }];
    _labelSupportValue = [UILabel labelWithTitle:@"" titleFont:15 backgroundColor:[UIColor clearColor] textAlignment:NSTextAlignmentLeft ract:CGRectZero numberOfLines:1 textColor:A_CellFooterViewButtonShareTitleColorNormal];
    [self addSubview:_labelSupportValue];
    [_labelSupportValue mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(_imageViewSupport.mas_right).with.offset(3);
        make.centerY.equalTo(self);
        make.height.equalTo(@(A_TableViewCellFooterViewButtonHeightConst));
    }];
    _buttonReward = [UIButton buttonWithTitleString:@"0" titleColorNormal:[UIColor clearColor] titleColorHilight:[UIColor clearColor] titleColorDisenabled:[UIColor clearColor] normalImage:@"" hilightImage:@"" disenabledImage:@"" normalBgImage:@"" hilightBgImage:@"" disenabledBgImage:@"" titleFont:15 rect:CGRectZero targrt:self action:@selector(private_sourceCenterButtonRewardAction:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:_buttonReward];
    
    _buttonSupport = [UIButton buttonWithTitleString:@"0" titleColorNormal:[UIColor clearColor] titleColorHilight:[UIColor clearColor] titleColorDisenabled:[UIColor clearColor] normalImage:@"" hilightImage:@"" disenabledImage:@"" normalBgImage:@"" hilightBgImage:@"" disenabledBgImage:@"" titleFont:15  rect:CGRectZero targrt:self action:@selector(private_sourceCenterButtonSupportAction:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:_buttonSupport];

    _buttonShare = [UIButton buttonWithTitle:@"分享到" titleFont:13 titleColorNormal:[UIColor whiteColor] titleColorHilight:[UIColor whiteColor] titleColorDisable:[UIColor whiteColor] backgroundImageNoraml:@"" backgroundImageHilight:@"" backgroundImageDisable:@"" backgroundColor:[UIColor colorWithRed:230/255.0 green:59/255.0 blue:51/255.0 alpha:1] cornerRadius:2.5 enabled:YES rect:CGRectZero Targrt:self action:@selector(private_sourceCenterButtonShareAction:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:_buttonShare];
    
    _buttonShare.layer.borderWidth = 1;
    _buttonShare.layer.borderColor = [UIColor colorWithRed:230/255.0 green:59/255.0 blue:51/255.0 alpha:1].CGColor;
    _buttonShare.layer.masksToBounds = YES;

    [self private_updateButtonFrame];
    [_buttonShare mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.mas_right).with.offset(-A_TableViewCellHeadTopOffsetConst);
        make.height.equalTo(@(A_TableViewCellFooterViewButtonHeightConst));
        make.width.equalTo(@(62));
        make.centerY.equalTo(self);
    }];
    _labelRejectReason = [UILabel labelWithTitle:@"" titleFont:14 backgroundColor:[UIColor clearColor] textAlignment:NSTextAlignmentLeft ract:CGRectZero numberOfLines:2 textColor:[UIColor colorWithRed:230/255.0 green:59/255.0 blue:51/255.0 alpha:1]];
    [self addSubview:_labelRejectReason];
    
    [_labelRejectReason mas_makeConstraints:^(MASConstraintMaker *make) {    make.left.equalTo(self.mas_left).with.offset(A_TableViewCellHeadTopOffsetConst);
        make.right.equalTo(self.mas_right).with.offset(-A_TableViewCellHeadTopOffsetConst);
        make.top.bottom.equalTo(self);
    }];
    [self private_setLabelRejectReasonHidden:YES];
}

- (void)private_updateButtonFrame {
    [_buttonReward mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(_imageViewReward);
        make.right.equalTo(_labelRewardValue);
        make.centerY.equalTo(self);
        make.height.equalTo(@(A_TableViewCellFooterViewButtonHeightConst));
    }];
    
    [_buttonSupport mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self);
        make.right.equalTo(_labelSupportValue);
        make.left.equalTo(_imageViewSupport);        make.height.equalTo(@(A_TableViewCellFooterViewButtonHeightConst));
    }];
}

- (void)private_setLabelRejectReasonHidden:(BOOL)hidden {
    _labelRejectReason.hidden = hidden;
    if (hidden) {
        
        _buttonShare.hidden = NO;
        _labelRewardValue.hidden = NO;
        _labelSupportValue.hidden = NO;
        _imageViewReward.hidden = NO;
        _imageViewSupport.hidden = NO;
    } else {
        
        _buttonShare.hidden = YES;
        _labelRewardValue.hidden = YES;
        _labelSupportValue.hidden = YES;
        _imageViewReward.hidden = YES;
        _imageViewSupport.hidden = YES;
    }
}

- (void)private_updateButtonStateWithItem:(A_Item *)item {
    
}

@end
