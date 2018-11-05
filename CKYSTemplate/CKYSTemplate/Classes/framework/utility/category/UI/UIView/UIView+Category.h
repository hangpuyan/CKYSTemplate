//
//  UIView+Category.h
//  CKYS
//
//  Created by Yan on 2018/7/4.
//  Copyright © 2018年 YY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Category)

+ (UIView *)instanceWithRect:(CGRect)rect backgroundColor:(UIColor *)bgColor parentView:(UIView *)parentView;

@end
