//
//  UILabel+Category.m
//  AudioNote
//
//  Created by sogou-Yan on 17/1/16.
//  Copyright © 2017年 YY. All rights reserved.
//

#import "UILabel+Category.h"

@implementation UILabel (Category)

+ (UILabel *)labelWithTitle:(NSString *)title titleFont:(CGFloat)font backgroundColor:(UIColor *)backgroundColor textAlignment:(NSTextAlignment)textAlignment ract:(CGRect)ract numberOfLines:(NSInteger)numberOfLines textColor:(UIColor *)textColor {
    UILabel *label = [[UILabel alloc]init];
    [label setText:title];
    [label setFrame:ract];
    [label setTextAlignment:textAlignment];
    [label setBackgroundColor:backgroundColor];
    [label setNumberOfLines:numberOfLines];
    [label setTextColor:textColor];
    [label setFont:[UIFont systemFontOfSize:font]];
    return label;
}

+ (UILabel *)labelWithTitle:(NSString *)title titleFont:(CGFloat)font backgroundColor:(UIColor *)backgroundColor textAlignment:(NSTextAlignment)textAlignment ract:(CGRect)ract numberOfLines:(NSInteger)numberOfLines textColor:(UIColor *)textColor fontName:(NSString *)fontName {
    UILabel *label = [[UILabel alloc]init];
    [label setText:title];
    [label setFrame:ract];
    [label setTextAlignment:textAlignment];
    [label setBackgroundColor:backgroundColor];
    [label setNumberOfLines:numberOfLines];
    [label setTextColor:textColor];
    [label setFont:[UIFont fontWithName:fontName size:font]];
    return label;
}

@end
