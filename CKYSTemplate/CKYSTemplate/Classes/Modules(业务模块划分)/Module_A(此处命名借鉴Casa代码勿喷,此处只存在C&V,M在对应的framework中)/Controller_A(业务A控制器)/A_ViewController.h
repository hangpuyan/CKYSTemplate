//
//  YHPViewController.h
//  CKYSTemplate
//
//  Created by Yan on 2018/11/7.
//  Copyright © 2018 YY. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "A_ViewControllerInterface.h"

NS_ASSUME_NONNULL_BEGIN

/**
 业务A Controller 接口定义
 1. delegate 单独定义一个文件
 2. 初始化需要传入参数的定义一个接口
 */
@interface A_ViewController : UIViewController <A_ViewControllerInstanceProtocol, A_ViewControllerInputProtocol>

@end

NS_ASSUME_NONNULL_END
