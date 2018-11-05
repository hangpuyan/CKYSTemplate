//
//  CKYSPalceHolderView.m
//  CKYSPlatform
//
//  Created by Yan on 2018/7/18.
//  Copyright © 2018年 ckys. All rights reserved.
//

#import "CKYSPalceHolderView.h"
#import "Masonry.h"
#import "UILabel+Category.h"

@interface CKYSPalceHolderView ()

@property (nonatomic, strong) UILabel *labelTitle;

@property (nonatomic, strong) UIImageView *imageViewCenter;

@property (nonatomic, strong) UIView *parentView;

@end

@implementation CKYSPalceHolderView

- (void)show {
    self.hidden = false;
}

- (void)dismiss {
    self.hidden = true;
}

- (instancetype)initWithFrame:(CGRect)frame parentView:(UIView *)parentView {
    _parentView = parentView;
    return [self initWithFrame:frame];
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [_parentView addSubview:self];
        self.hidden = true;
        self.backgroundColor = [UIColor colorWithRed:252/255.0 green:252/255.0 blue:252/255.0 alpha:1];
        _labelTitle = [UILabel labelWithTitle:@"" titleFont:14 backgroundColor:[UIColor clearColor] textAlignment:NSTextAlignmentCenter ract:CGRectZero numberOfLines:1 textColor:[UIColor colorWithRed:122/255.0 green:122/255.0 blue:122/255.0 alpha:1]];
        [self addSubview:self.labelTitle];
        _imageViewCenter = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@""]];
        [self addSubview:_imageViewCenter];
    }
    return self;
}

@end
