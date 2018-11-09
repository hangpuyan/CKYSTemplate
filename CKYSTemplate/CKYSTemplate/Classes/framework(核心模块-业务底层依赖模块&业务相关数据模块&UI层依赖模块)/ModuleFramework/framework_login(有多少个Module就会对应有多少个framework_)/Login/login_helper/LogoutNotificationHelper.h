//
//  LogoutNotificationHelper.h
//  CKYSTemplate
//
//  Created by Yan on 2018/11/9.
//  Copyright © 2018 YY. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol LogoutNotificationHelperProtocol <NSObject>

+ (void)postLogoutSuccessNotification:(NSDictionary *)userInfo object:(id)object;

+ (void)registerLogoutSuccessNotificationObserver:(id)observer selector:(SEL)selector object:(id)object;

+ (void)unregisterLogoutSuccessNotificationObserver:(id)observer object:(id)object;

@end

/** 退出登录之后发送通知 其他业务模块 */
@interface LogoutNotificationHelper : NSObject <LogoutNotificationHelperProtocol>

@end

NS_ASSUME_NONNULL_END
