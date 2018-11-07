//
//  A_ImageCollectionViewCell.m
//  CKYSPlatform
//
//  Created by Yan on 2018/10/17.
//  Copyright © 2018 ckys. All rights reserved.
//

#import "A_ImageCollectionViewCell.h"
#import "CKYSScreenConst.h"
#import "Masonry.h"

NSString *A_ImageCollectionViewCellID = @"A_ImageCollectionViewCellID";

@implementation A_ImageCollectionViewCell {
    UIImageView *_imageViewCenter;
    UIImage *_image;
    NSString *_imageUrl;
}

#define CKYS_SOURCE_CENTER_CELL_BG_COLOR      [UIColor whiteColor]

- (void)setSourceCenterImageItemUrl:(NSString *)imageUrl {
    
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.contentView.backgroundColor = [UIColor lightGrayColor];
        [self initUI];
    }
    return self;
}

- (void)initUI {
    self.backgroundColor = CKYS_SOURCE_CENTER_CELL_BG_COLOR;
    _imageViewCenter = [[UIImageView alloc] initWithImage:[UIImage imageNamed:CKYS_SOURCE_CENTER_IMAGE_PLACEHOLDER]];
    [self.contentView addSubview:_imageViewCenter];
    [_imageViewCenter mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.top.bottom.left.right.equalTo(self.contentView);
    }];
    self.contentView.backgroundColor = [UIColor clearColor];
    _imageViewCenter.layer.cornerRadius = 4;
    _imageViewCenter.layer.masksToBounds = YES;
    _imageViewCenter.userInteractionEnabled = YES;
    _imageViewCenter.contentMode = UIViewContentModeScaleAspectFill;
    _imageViewCenter.clipsToBounds = YES;
    self.contentView.layer.cornerRadius = 4;
    self.contentView.layer.masksToBounds = YES;
}

@end
