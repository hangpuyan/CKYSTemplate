//
//  CKYSLoginViewController.h
//  SystemInfo
//
//  Created by Yan on 2018/11/21.
//  Copyright © 2018 YY. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol CKYSLoginViewControllerProtocol <NSObject>

//push方式
+ (void)pushToLoginViewControllerFromViewController:(UIViewController *)viewController;

//present方式
+ (void)presentToLoginViewControllerFromViewController:(UIViewController *)viewController;

@end

/** 登录页面 */
@interface CKYSLoginViewController : UIViewController <CKYSLoginViewControllerProtocol>


@end

NS_ASSUME_NONNULL_END
