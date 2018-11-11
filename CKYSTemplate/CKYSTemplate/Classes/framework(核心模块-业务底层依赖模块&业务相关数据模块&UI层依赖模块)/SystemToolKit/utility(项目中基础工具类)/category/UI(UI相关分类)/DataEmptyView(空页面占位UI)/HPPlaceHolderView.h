//
//  HPPlaceHolderView.h
//  CKYSPlatform
//
//  Created by Yan on 2018/7/18.
//  Copyright © 2018年 ckys. All rights reserved.
//

#import <UIKit/UIKit.h>

/** 占位符 基视图 子类继承此类根据业务不同修改 占位图片 文案 位置 */
@interface HPPlaceHolderView : UIView

@property (nonatomic, strong, readonly) UILabel *labelTitle;

@property (nonatomic, strong, readonly) UIImageView *imageViewCenter;

- (instancetype)initWithFrame:(CGRect)frame parentView:(UIView *)parentView;

- (void)show;

- (void)dismiss;

@end
