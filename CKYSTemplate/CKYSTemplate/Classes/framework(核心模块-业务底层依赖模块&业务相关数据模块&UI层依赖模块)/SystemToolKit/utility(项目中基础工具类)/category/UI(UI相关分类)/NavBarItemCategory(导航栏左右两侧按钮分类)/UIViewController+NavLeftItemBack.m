//
//  UIViewController+NavLeftItemBack.m
//  CKYSPlatform
//
//  Created by Yan on 2018/10/22.
//  Copyright © 2018 ckys. All rights reserved.
//

#import "UIViewController+NavLeftItemBack.h"
#import "UIButton+Image.h"
#import "objc/runtime.h"
#import "ScreenConst.h"

CGFloat CKYSViewControllerLeftItemXOffsetConst = 10;

@interface UIViewController ()

@property (nonatomic, strong) UIButton *leftItem;

@end

@implementation UIViewController (NavLeftItemBack)

static const void *CKYSViewControllerLeftItemKey = &CKYSViewControllerLeftItemKey;

- (UIButton *)leftItem {
    return objc_getAssociatedObject(self, CKYSViewControllerLeftItemKey);
}

- (void)setLeftItem:(UIButton *)leftItem {
    objc_setAssociatedObject(self, CKYSViewControllerLeftItemKey, leftItem, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (void)initLeftItemWithTargrt:(id)target
                        action:(SEL)action
                    parentView:(UIView *)parentView {
    CGFloat y = 30;
    CGFloat w = 30;
    CGFloat h = 30;
    if (IPHONE_X) {
        y = 30;
        w = 50;
        h = 50;
    }
    if (!self.leftItem) {
        self.leftItem = [UIButton buttonWithImageNormalString:@"ckys_source_center_button_back_image_normal" imageHilightString:@"ckys_source_center_button_back_image_normal" imageDisenabledString:@"ckys_source_center_button_back_image_normal" imageBgNormalString:@"" imageBgHilightString:nil imageBgDisenabledString:nil backgroundColor:[UIColor clearColor] tag:0 rect:CGRectMake(CKYSViewControllerLeftItemXOffsetConst*0.5, y, w, h) targrt:target action:action forControlEvents:UIControlEventTouchUpInside];
        [parentView addSubview:self.leftItem];
    }
}

@end
