//
//  UIButton+SetTitleColorImage.m
//  CKYSPlatform
//
//  Created by Yan on 2018/10/16.
//  Copyright © 2018 ckys. All rights reserved.
//

#import "UIButton+SetTitleColorImage.h"

@implementation UIButton (SetTitleColorImage)

- (void)setTitle:(NSString *)aTitle titleFont:(CGFloat)aTitleFont titleColorNormal:(UIColor *)aTitleColorNormal titleColorHilight:(UIColor *)aTitleColorHilight titleColorDisable:(UIColor *)aTitleColorDisable {
    [self setTitle:aTitle forState:UIControlStateNormal];
    self.titleLabel.font = [UIFont systemFontOfSize:aTitleFont];
    [self setTitleColor:aTitleColorNormal forState:UIControlStateNormal];
    [self setTitleColor:aTitleColorHilight forState:UIControlStateHighlighted];
    [self setTitleColor:aTitleColorDisable forState:UIControlStateDisabled];
}

- (void)setBackgroundImageNormal:(NSString *)aBGImageNormal backgroundImageHilight:(NSString *)aBGImageHilight backgroundImageDisable:(NSString *)aBGImageDisable {
    if (aBGImageNormal.length) {
        [self setBackgroundImage:[UIImage imageNamed:aBGImageNormal]  forState:UIControlStateNormal];
    }
    if (aBGImageHilight.length) {
        [self setBackgroundImage:[UIImage imageNamed:aBGImageHilight] forState:UIControlStateHighlighted];
    }
    if (aBGImageDisable.length) {
        [self setBackgroundImage:[UIImage imageNamed:aBGImageDisable] forState:UIControlStateDisabled];
    }
}

- (void)setImageNormal:(NSString *)aImageNormal imageHilight:(NSString *)aImageHilight imageDisable:(NSString *)aImageDisable {
    if (aImageNormal.length) {
        [self setImage:[UIImage imageNamed:aImageNormal] forState:UIControlStateNormal];
    }
    if (aImageHilight.length) {
        [self setImage:[UIImage imageNamed:aImageHilight] forState:UIControlStateHighlighted];
    }
    if (aImageDisable.length) {
        [self setImage:[UIImage imageNamed:aImageDisable] forState:UIControlStateDisabled];
    }
}

@end
