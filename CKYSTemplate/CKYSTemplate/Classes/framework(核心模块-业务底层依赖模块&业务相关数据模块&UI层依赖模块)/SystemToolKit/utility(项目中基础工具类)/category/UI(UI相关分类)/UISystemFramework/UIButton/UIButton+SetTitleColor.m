//
//  UIButton+SetTitleColor.m
//  UISystemFramework
//
//  Created by Yan on 2018/11/20.
//  Copyright © 2018 YY. All rights reserved.
//

#import "UIButton+SetTitleColor.h"

@implementation UIButton (SetTitleColor)

- (void)setTitle:(NSString *)aTitle titleFont:(CGFloat)aTitleFont titleColorNormal:(UIColor *)aTitleColorNormal titleColorHilight:(UIColor *)aTitleColorHilight titleColorDisable:(UIColor *)aTitleColorDisable {
    [self setTitle:aTitle forState:UIControlStateNormal];
    self.titleLabel.font = [UIFont systemFontOfSize:aTitleFont];
    [self setTitleColor:aTitleColorNormal forState:UIControlStateNormal];
    [self setTitleColor:aTitleColorHilight forState:UIControlStateHighlighted];
    [self setTitleColor:aTitleColorDisable forState:UIControlStateDisabled];
}

@end
