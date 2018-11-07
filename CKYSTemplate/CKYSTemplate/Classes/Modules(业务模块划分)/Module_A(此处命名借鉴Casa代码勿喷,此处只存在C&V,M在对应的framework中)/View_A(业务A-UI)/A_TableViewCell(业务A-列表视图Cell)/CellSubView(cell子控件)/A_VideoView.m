//
//  A_VideoView.m
//  CKYSPlatform
//
//  Created by Yan on 2018/10/18.
//  Copyright © 2018 ckys. All rights reserved.
//

#import "A_VideoView.h"
#import "Masonry.h"
#import "A_TableViewCellConst.h"
#import "UIButton+Image.h"
#import "A_Item.h"
#import "UIButton+ClearColor.h"

CGFloat A_VideoViewHeightConst = 197;

@implementation A_VideoView {
    UIImageView *_imageViewVideoPhoto;
    UIButton *_buttonVideoControl;
    UIButton *_buttonVideoActionBg;
    NSIndexPath *_indexPath;
    A_Item *_videoItem;
    __weak id<A_VideoViewDelegate> _delegate;
}

#define HP_A_VIDEO_BUTTON_IMAGE_NORMAL @"hp_a_video_control_button_image_normal"
#define HP_A_VIDEO_BG_COLOR [UIColor colorWithRed:231/255.0 green:231/255.0 blue:231/255.0 alpha:0.8]

- (void)setSourceCenterVideoViewActionType:(A_VideoViewActionType)type {

    if (type==A_VideoViewActionTypeStart) {
        _buttonVideoControl.hidden = YES;
//        _imageViewVideoPhoto.hidden = YES;
    } else if (type==A_VideoViewActionTypeStop) {
        _buttonVideoControl.hidden = NO;
//        _imageViewVideoPhoto.hidden = NO;
    }
}

- (void)private_sourceCenterVideoViewButtonVideoControlAction:(UIButton *)sender {
    if (_delegate && [_delegate respondsToSelector:@selector(sourceCenterVideoViewActionType:atIndexPath:videoItem:)]) {
        [_delegate sourceCenterVideoViewActionType:A_VideoViewActionTypeStart atIndexPath:_indexPath videoItem:_videoItem];
    }
}

- (void)private_sourceCenterVideoViewButtonVideoBGAction:(UIButton *)sender {
    if (_delegate && [_delegate respondsToSelector:@selector(sourceCenterVideoViewActionType:atIndexPath:videoItem:)]) {
        [_delegate sourceCenterVideoViewActionType:A_VideoViewActionTypeStart atIndexPath:_indexPath videoItem:_videoItem];
    }
}

- (void)setSourceCenterVideoViewData:(A_Item *)data atIndexPath:(NSIndexPath *)indexPath {
    _indexPath = indexPath;
    if (data) {
        _videoItem = data;
        [self setSourceCenterVideoViewData:data];
    }
}

- (void)setSourceCenterVideoViewData:(A_Item *)data {
    
}

- (instancetype)initWithFrame:(CGRect)frame sourceCenterVideoViewDelegate:(id<A_VideoViewDelegate>)delegate {
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
    self.layer.cornerRadius = 4;
    self.layer.masksToBounds = YES;
    self.backgroundColor = HP_A_VIDEO_BG_COLOR;
    _imageViewVideoPhoto = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@""]];
    _imageViewVideoPhoto.contentMode = UIViewContentModeScaleAspectFill;
    _imageViewVideoPhoto.userInteractionEnabled = YES;
    [self addSubview:_imageViewVideoPhoto];
    [_imageViewVideoPhoto mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.top.bottom.centerX.centerY.equalTo(self);
    }];
    _buttonVideoControl = [UIButton buttonWithImageNormalString:HP_A_VIDEO_BUTTON_IMAGE_NORMAL imageHilightString:HP_A_VIDEO_BUTTON_IMAGE_NORMAL imageDisenabledString:HP_A_VIDEO_BUTTON_IMAGE_NORMAL imageBgNormalString:@"" imageBgHilightString:@"" imageBgDisenabledString:@"" backgroundColor:nil tag:0 rect:CGRectZero targrt:self action:@selector(private_sourceCenterVideoViewButtonVideoControlAction:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:_buttonVideoControl];
    [_buttonVideoControl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.top.bottom.centerX.centerY.equalTo(_imageViewVideoPhoto);
    }];
    _buttonVideoActionBg = [UIButton buttonWithTargrt:self action:@selector(private_sourceCenterVideoViewButtonVideoBGAction:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:_buttonVideoActionBg];
    [_buttonVideoActionBg mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.top.bottom.centerX.centerY.equalTo(_imageViewVideoPhoto);
    }];
}

@end
