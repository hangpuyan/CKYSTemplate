//
//  LoginNotificationHelper.h
//  CKYSTemplate
//
//  Created by Yan on 2018/11/9.
//  Copyright © 2018 YY. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol LoginNotificationHelperProtocol <NSObject>

+ (void)postLoginSuccessNotification:(NSDictionary *)userInfo object:(id)object;

+ (void)registerLoginSuccessNotificationObserver:(id)observer selector:(SEL)selector object:(id)object;

+ (void)unregisterLoginSuccessNotificationObserver:(id)observer object:(id)object;

@end

/** 登录成功之后发送通知 其他业务模块 */
@interface LoginNotificationHelper : NSObject <LoginNotificationHelperProtocol>

@end

NS_ASSUME_NONNULL_END
