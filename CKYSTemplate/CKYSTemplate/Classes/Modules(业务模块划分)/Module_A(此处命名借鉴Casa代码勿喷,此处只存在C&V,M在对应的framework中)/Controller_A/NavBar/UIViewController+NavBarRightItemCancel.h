//
//  UIViewController+NavBarRightItemCancel.h
//  CKYSPlatform
//
//  Created by Yan on 2018/10/29.
//  Copyright © 2018 ckys. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIViewController (NavBarRightItemCancel)

@property (nonatomic, strong, readonly) UIButton *rightCancelItem;

- (void)initRightCancelItemWithTargrt:(id)target
                               action:(SEL)action;

@end

NS_ASSUME_NONNULL_END
