//
//  UIImageView+Category.h
//  UISystemFramework
//
//  Created by Yan on 2018/11/20.
//  Copyright © 2018 YY. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

/** 类工厂 创建 UIImageView */
@interface UIImageView (Category)


/**
 类工厂方式 创建 UIImageView

 @param imageName 图片名称
 @param rect 图片大小
 @param bgColor 背景色
 @param parentView 父控件
 @return imageView
 */
+ (UIImageView *)imageViewWithImageName:(NSString *)imageName rect:(CGRect)rect backgroundColor:(UIColor *)bgColor parentView:(UIView *)parentView;

@end

NS_ASSUME_NONNULL_END
