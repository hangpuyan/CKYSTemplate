//
//  CKDemoNotificationHelper.h
//  CKYSTemplate
//
//  Created by Yan on 2018/9/6.
//  Copyright © 2018年 YY. All rights reserved.
//

#import <Foundation/Foundation.h>

/** 工程中某一个模块或者功能需要发送监听和移除通知 创建一个新的类 */
@interface CKDemoNotificationHelper : NSObject

+ (void)postDemoNotification:(NSDictionary *)userInfo object:(id)object;

+ (void)addDemoNotificationObserver:(id)observer selector:(SEL)selector object:(id)object;

+ (void)removeDemoNotificationObserver:(id)observer object:(id)object;

@end
