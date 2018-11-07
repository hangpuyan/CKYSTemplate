//
//  HPDataEmptyView.m
//  CKYSPlatform
//
//  Created by Yan on 2018/7/12.
//  Copyright © 2018年 ckys. All rights reserved.
//

#import "HPDataEmptyView.h"
#import "Masonry.h"
#import "UILabel+Category.h"

@interface HPDataEmptyView ()

@property (nonatomic, strong) UILabel *labelDataNull;//暂无此类课程

@property (nonatomic, strong) UIImageView *imageViewDataNull;

@property (nonatomic, assign) CGFloat topOffset;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, copy) NSString *imageName;

@property (nonatomic, weak) UIView *parentView;

@end

@implementation HPDataEmptyView

#define HP_EC_COURSE_LIST_DATA_NULL_PLACEHOLDER_IMAGE     @"hp_ec_courselist_placeholder_image"
#define HP_EC_COURSE_LIST_DATA_NULL_PLACEHOLDER_TEXT      @"暂时没有此类课程~"

- (instancetype)initWithFrame:(CGRect)frame topOffset:(CGFloat)topOffset businessCollegeView:(UIView *)parentView {
    _title = @"暂时没有内容，请稍后重试";
    _imageName = @"hp_businesscollege_home_data_empty_image";
    _topOffset = topOffset;
    _parentView = parentView;
    return [self initWithFrame:frame];
}

- (instancetype)initWithFrame:(CGRect)frame topOffset:(CGFloat)topOffset {
    _topOffset = topOffset;
    return [self initWithFrame:frame];
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        if (_parentView) {
            [_parentView addSubview:self];
        }
        self.hidden = true;
        _labelDataNull = [UILabel labelWithTitle:_title ? _title : HP_EC_COURSE_LIST_DATA_NULL_PLACEHOLDER_TEXT titleFont:14 backgroundColor:[UIColor clearColor] textAlignment:NSTextAlignmentCenter ract:CGRectZero numberOfLines:1 textColor:[UIColor colorWithRed:122/255.0 green:122/255.0 blue:122/255.0 alpha:1]];
        [self addSubview:_labelDataNull];
        _imageViewDataNull = [[UIImageView alloc] initWithImage:[UIImage imageNamed:_imageName ? _imageName :  HP_EC_COURSE_LIST_DATA_NULL_PLACEHOLDER_IMAGE]];
        [self addSubview:_imageViewDataNull];
        [_imageViewDataNull mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self);
            if (_topOffset) {
                make.top.equalTo(@(_topOffset));
            } else {
                make.top.equalTo(@0);
            }
        }];
        [_labelDataNull mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(_imageViewDataNull.mas_bottom).with.offset(20);
            make.centerX.equalTo(self);
            make.left.equalTo(self.mas_left).with.offset(50);
            make.right.equalTo(self.mas_right).with.offset(-50);
        }];
    }
    return self;
}

@end
