//
//  A_CellHeaderView.m
//  CKYSPlatform
//
//  Created by Yan on 2018/10/17.
//  Copyright © 2018 ckys. All rights reserved.
//

#import "A_CellHeaderView.h"
#import "UILabel+Category.h"
#import "Masonry.h"
#import "A_TableViewCellConst.h"
#import "UIButton+ClearColor.h"
#import "A_Item.h"
#import "Masonry.h"

CGFloat A_CellHeaderViewHeightConst = 60;

#define A_TableViewCellUserNameTopOffsetHeadConst 3
#define A_TableViewCellUserNameLeftOffsetHeadConst 5
#define A_TableViewCellUserNameRightOffsetHeadConst 100

@implementation A_CellHeaderView {
    __weak id<A_CellHeaderViewDelegate> _delegate;
    UIImageView *_imageViewUserHead;//头像
    UIButton *_buttonUserHead;//头像按钮
    UILabel *_labelTitleUserName;//名字
    UILabel *_labelTitleSendTime;//时间
    UILabel *_labelTitleAuthStatus;//审核状态
    NSIndexPath *_indexpath;
}

- (void)setSourceCenterCellHeaderViewData:(A_Item *)item atIndexPath:(nonnull NSIndexPath *)indexpath {
    _indexpath = indexpath;
    
}

- (void)private_buttonUserHeadAction:(UIButton *)sender {
    if (_delegate && [_delegate respondsToSelector:@selector(sourceCenterCellHeaderViewHeadActionAtIndexPath:)]) {
        [_delegate sourceCenterCellHeaderViewHeadActionAtIndexPath:_indexpath];
    }
}

- (instancetype)initWithFrame:(CGRect)frame delegate:(id<A_CellHeaderViewDelegate>)delegate {
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

- (void)initUI {
    _imageViewUserHead = [[UIImageView alloc] init];
    [self addSubview:_imageViewUserHead];
    _labelTitleUserName = [UILabel labelWithTitle:@"" titleFont:14 backgroundColor:[UIColor clearColor] textAlignment:NSTextAlignmentLeft ract:CGRectZero numberOfLines:1 textColor:[UIColor colorWithRed:51/255.0 green:51/255.0 blue:51/255.0 alpha:1]];
    [self addSubview:_labelTitleUserName];
    _buttonUserHead = [UIButton buttonWithTargrt:self action:@selector(private_buttonUserHeadAction:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:_buttonUserHead];
    _labelTitleSendTime = [UILabel labelWithTitle:@"" titleFont:12 backgroundColor:[UIColor clearColor] textAlignment:NSTextAlignmentLeft ract:CGRectZero numberOfLines:1 textColor:[UIColor colorWithRed:102/255.0 green:102/255.0 blue:102/255.0 alpha:1]];
    [self addSubview:_labelTitleSendTime];
    
    _labelTitleAuthStatus = [UILabel labelWithTitle:@"" titleFont:15 backgroundColor:[UIColor clearColor] textAlignment:NSTextAlignmentLeft ract:CGRectZero numberOfLines:1 textColor:[UIColor colorWithRed:230/255.0 green:59/255.0 blue:51/255.0 alpha:1]];
    [self addSubview:_labelTitleAuthStatus];
    
    [_imageViewUserHead mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_top).with.offset(A_TableViewCellHeadTopOffsetConst);
        make.left.equalTo(self.mas_left).with.offset(A_TableViewCellHeadTopOffsetConst);
        make.width.height.equalTo(@(40));
    }];
    _imageViewUserHead.layer.cornerRadius = A_TableViewCellHeadWidthConst * 0.5;
    _imageViewUserHead.layer.masksToBounds = YES;
    
    [_buttonUserHead mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.top.bottom.centerX.centerY.equalTo(_imageViewUserHead);
    }];
    [_labelTitleUserName mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_imageViewUserHead.mas_top).with.offset(A_TableViewCellUserNameTopOffsetHeadConst);
        make.left.equalTo(_imageViewUserHead.mas_right).with.offset(A_TableViewCellUserNameLeftOffsetHeadConst);
        make.right.equalTo(self.mas_right).with.offset(-A_TableViewCellUserNameRightOffsetHeadConst);
    }];
    [_labelTitleSendTime mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(_imageViewUserHead.mas_bottom).with.offset(-A_TableViewCellUserNameTopOffsetHeadConst);
        make.left.equalTo(_imageViewUserHead.mas_right).with.offset(A_TableViewCellUserNameLeftOffsetHeadConst);
        make.right.equalTo(self.mas_right).with.offset(-A_TableViewCellUserNameRightOffsetHeadConst);
    }];
    [_labelTitleAuthStatus mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(_imageViewUserHead);
        make.right.equalTo(self.mas_right).with.offset(-A_TableViewCellHeadTopOffsetConst);
    }];
}

@end
