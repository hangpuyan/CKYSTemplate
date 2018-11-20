//
//  UIButton+SetImage.h
//  UISystemFramework
//
//  Created by Yan on 2018/11/20.
//  Copyright © 2018 YY. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

/** 统一接口设置按钮图片 背景图片 */
@interface UIButton (SetImage)

/**
 统一接口设置按钮 图片

 @param aImageNormal 图片名称Normal
 @param aImageHilight 图片名称Hilight
 @param aImageDisable 图片名称Disable
 */
- (void)setImageNormal:(NSString *)aImageNormal imageHilight:(NSString *)aImageHilight imageDisable:(NSString *)aImageDisable;


/**
 统一接口设置按钮 背景图片

 @param aBGImageNormal 背景图片名称Normal 
 @param aBGImageHilight 背景图片名称Hilight
 @param aBGImageDisable 背景图片名称Disable
 */
- (void)setBackgroundImageNormal:(NSString *)aBGImageNormal backgroundImageHilight:(NSString *)aBGImageHilight backgroundImageDisable:(NSString *)aBGImageDisable;

@end

NS_ASSUME_NONNULL_END
