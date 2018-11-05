//
//  UIView+Category.m
//  CKYS
//
//  Created by Yan on 2018/7/4.
//  Copyright © 2018年 YY. All rights reserved.
//

#import "UIView+Category.h"

@implementation UIView (Category)

+ (UIView *)instanceWithRect:(CGRect)rect backgroundColor:(UIColor *)bgColor parentView:(UIView *)parentView {
    UIView *view = [[UIView alloc] initWithFrame:rect];
    view.backgroundColor = bgColor;
    [parentView addSubview:view];
    return view;
}

@end
