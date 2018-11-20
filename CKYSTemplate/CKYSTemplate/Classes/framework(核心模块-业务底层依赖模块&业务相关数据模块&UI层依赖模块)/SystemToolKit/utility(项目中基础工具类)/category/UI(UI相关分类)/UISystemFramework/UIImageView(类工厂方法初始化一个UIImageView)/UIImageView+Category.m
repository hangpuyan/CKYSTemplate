//
//  UIImageView+Category.m
//  UISystemFramework
//
//  Created by Yan on 2018/11/20.
//  Copyright © 2018 YY. All rights reserved.
//

#import "UIImageView+Category.h"

@implementation UIImageView (Category)

+ (UIImageView *)imageViewWithImageName:(NSString *)imageName rect:(CGRect)rect backgroundColor:(UIColor *)bgColor parentView:(UIView *)parentView {
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:imageName]];
    imageView.backgroundColor = bgColor;
    imageView.frame = rect;
    [parentView addSubview:imageView];
    return imageView;
}

@end
