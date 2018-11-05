//
//  UILabel+Category.h
//  AudioNote
//
//  Created by sogou-Yan on 17/1/16.
//  Copyright © 2017年 YY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (Category)

/**
 *  create a new label （自定义label）
 *
 *  @param title           文字
 *  @param font            字号
 *  @param backgroundColor 背景颜色
 *  @param textAlignment   居中样式
 *  @param ract            frame
 *  @param numberOfLines   行数
 *  @param textColor  文字颜色
 *  @return label
 */
+ (UILabel *)labelWithTitle:(NSString *)title titleFont:(CGFloat)font backgroundColor:(UIColor *)backgroundColor textAlignment:(NSTextAlignment)textAlignment ract:(CGRect)ract numberOfLines:(NSInteger)numberOfLines textColor:(UIColor *)textColor;

/**
 create a new label（等宽字体）

 @param title 文字
 @param font 字号
 @param backgroundColor 背景颜色
 @param textAlignment 文字居中样式
 @param ract frame
 @param numberOfLines 行数
 @param textColor 文字颜色
 @param fontName 字体名字
 @return 等宽字体专用
 */
+ (UILabel *)labelWithTitle:(NSString *)title titleFont:(CGFloat)font backgroundColor:(UIColor *)backgroundColor textAlignment:(NSTextAlignment)textAlignment ract:(CGRect)ract numberOfLines:(NSInteger)numberOfLines textColor:(UIColor *)textColor fontName:(NSString *)fontName;

@end
