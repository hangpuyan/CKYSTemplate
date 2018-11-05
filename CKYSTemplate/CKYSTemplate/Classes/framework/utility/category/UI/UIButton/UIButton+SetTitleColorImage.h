//
//  UIButton+SetTitleColorImage.h
//  CKYSPlatform
//
//  Created by Yan on 2018/10/16.
//  Copyright © 2018 ckys. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIButton (SetTitleColorImage)

- (void)setTitle:(NSString *)aTitle titleFont:(CGFloat)aTitleFont titleColorNormal:(UIColor *)aTitleColorNormal titleColorHilight:(UIColor *)aTitleColorHilight titleColorDisable:(UIColor *)aTitleColorDisable;

- (void)setImageNormal:(NSString *)aImageNormal imageHilight:(NSString *)aImageHilight imageDisable:(NSString *)aImageDisable;

- (void)setBackgroundImageNormal:(NSString *)aBGImageNormal backgroundImageHilight:(NSString *)aBGImageHilight backgroundImageDisable:(NSString *)aBGImageDisable;

@end

NS_ASSUME_NONNULL_END
