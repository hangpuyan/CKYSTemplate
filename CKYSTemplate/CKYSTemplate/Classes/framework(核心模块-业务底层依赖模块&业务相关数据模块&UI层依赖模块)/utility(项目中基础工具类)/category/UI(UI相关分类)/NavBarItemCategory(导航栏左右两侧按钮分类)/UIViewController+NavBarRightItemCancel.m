//
//  UIViewController+NavBarRightItemCancel.m
//  CKYSPlatform
//
//  Created by Yan on 2018/10/29.
//  Copyright © 2018 ckys. All rights reserved.
//

#import "UIViewController+NavBarRightItemCancel.h"
#import "objc/runtime.h"

@interface UIViewController ()

@property (nonatomic, strong) UIButton *rightCancelItem;

@end

@implementation UIViewController (NavBarRightItemCancel)

static const void *CKYSViewControllerRightCancelItemKey = &CKYSViewControllerRightCancelItemKey;

- (UIButton *)rightCancelItem {
    return objc_getAssociatedObject(self, CKYSViewControllerRightCancelItemKey);
}

- (void)setRightCancelItem:(UIButton *)rightCancelItem {
    objc_setAssociatedObject(self, CKYSViewControllerRightCancelItemKey, rightCancelItem, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (void)initRightCancelItemWithTargrt:(id)target
                               action:(SEL)action {
    UIButton *cancleButton = [UIButton buttonWithType:UIButtonTypeCustom];
    cancleButton.frame = CGRectMake(0, 0, 40, 40);
    [cancleButton setTitle:@"取消" forState:UIControlStateNormal];
    [cancleButton.titleLabel setFont:[UIFont systemFontOfSize:15]];
    [cancleButton addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    cancleButton.contentEdgeInsets = UIEdgeInsetsMake(0, 5, 0, 0);
    self.rightCancelItem = cancleButton;
}

@end
