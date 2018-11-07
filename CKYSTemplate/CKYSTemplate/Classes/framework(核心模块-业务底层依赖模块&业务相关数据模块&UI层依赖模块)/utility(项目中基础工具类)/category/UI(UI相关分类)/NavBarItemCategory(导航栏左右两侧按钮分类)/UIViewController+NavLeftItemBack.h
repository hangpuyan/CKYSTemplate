//
//  UIViewController+NavLeftItemBack.h
//  CKYSPlatform
//
//  Created by Yan on 2018/10/22.
//  Copyright © 2018 ckys. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

extern CGFloat SCWebVCLeftItemXOffsetConst;

@interface UIViewController (NavLeftItemBack)

@property (nonatomic, strong, readonly) UIButton *leftItem;

- (void)initLeftItemWithTargrt:(id)target
                        action:(SEL)action
                    parentView:(UIView *)parentView;

@end

NS_ASSUME_NONNULL_END
