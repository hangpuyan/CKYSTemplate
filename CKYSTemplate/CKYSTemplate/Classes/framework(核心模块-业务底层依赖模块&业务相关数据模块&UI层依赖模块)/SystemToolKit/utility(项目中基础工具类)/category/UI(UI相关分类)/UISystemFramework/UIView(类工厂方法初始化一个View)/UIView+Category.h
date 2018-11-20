//
//  UIView+Category.h
//  CKYS
//
//  Created by Yan on 2018/7/4.
//  Copyright © 2018年 YY. All rights reserved.
//

#import <UIKit/UIKit.h>

/** 类工厂 创建 UIView */
@interface UIView (Category)

/**
 类工厂 创建 UIView

 @param rect frame
 @param bgColor 背景色
 @param parentView 父控件
 @return UIView instance
 */
+ (UIView *)instanceWithRect:(CGRect)rect backgroundColor:(UIColor *)bgColor parentView:(UIView *)parentView;

@end
