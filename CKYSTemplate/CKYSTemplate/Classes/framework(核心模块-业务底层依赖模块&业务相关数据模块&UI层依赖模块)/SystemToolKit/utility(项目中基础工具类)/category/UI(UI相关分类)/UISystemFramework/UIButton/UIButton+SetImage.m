//
//  UIButton+SetImage.m
//  UISystemFramework
//
//  Created by Yan on 2018/11/20.
//  Copyright © 2018 YY. All rights reserved.
//

#import "UIButton+SetImage.h"

@implementation UIButton (SetImage)

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
