//
//  UIButton+SetTitleColor.h
//  UISystemFramework
//
//  Created by Yan on 2018/11/20.
//  Copyright © 2018 YY. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

/** 统一接口设置按钮文字 */
@interface UIButton (SetTitleColor)


/**
 统一接口设置按钮文字

 @param aTitle 按钮文字
 @param aTitleFont 按钮文字字号
 @param aTitleColorNormal 文字颜色Normal
 @param aTitleColorHilight 文字颜色Hilight
 @param aTitleColorDisable 文字颜色Disable
 */
- (void)setTitle:(NSString *)aTitle titleFont:(CGFloat)aTitleFont titleColorNormal:(UIColor *)aTitleColorNormal titleColorHilight:(UIColor *)aTitleColorHilight titleColorDisable:(UIColor *)aTitleColorDisable;

@end

NS_ASSUME_NONNULL_END
