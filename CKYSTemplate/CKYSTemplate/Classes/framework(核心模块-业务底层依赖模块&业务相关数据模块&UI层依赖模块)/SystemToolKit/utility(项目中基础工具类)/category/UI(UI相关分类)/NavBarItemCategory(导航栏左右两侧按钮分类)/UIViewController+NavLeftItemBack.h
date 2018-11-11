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

/**
  经常会有这样的需求
  1. 在某WebViewController页面返回按钮和其他原生页面不一致,设计师在这个页面需要隐藏导航栏，显示一个圆角带背景色的返回按钮
  2. 你肯会在这个页面初始化一个返回按钮使用，过几天在另外一个页面加一个一样的返回按钮怎么办？copy？NO NO NO,copy code 是产生bug的捷径。
  3. 使用category 为UIViewController 添加一个属性和初始化接口，或者抽离返回按钮代码，使用工具类进行初始化。目前我个人比较喜欢使用category，但是用category也需要注意不要和类中原有函数重名，会覆盖类中原始函数
 */

@interface UIViewController (NavLeftItemBack)

@property (nonatomic, strong, readonly) UIButton *leftItem;

- (void)initLeftItemWithTargrt:(id)target
                        action:(SEL)action
                    parentView:(UIView *)parentView;

@end

NS_ASSUME_NONNULL_END
