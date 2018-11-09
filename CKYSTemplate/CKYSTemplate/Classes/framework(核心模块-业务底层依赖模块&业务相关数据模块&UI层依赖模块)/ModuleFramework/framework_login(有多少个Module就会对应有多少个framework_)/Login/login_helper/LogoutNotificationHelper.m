//
//  LogoutNotificationHelper.m
//  CKYSTemplate
//
//  Created by Yan on 2018/11/9.
//  Copyright © 2018 YY. All rights reserved.
//

#import "LogoutNotificationHelper.h"
#import "HPNotificationPostCenter.h"
#import "HPNotificationObserverCenter.h"

@implementation LogoutNotificationHelper

static NSString *HPLogoutSuccessNotificationConst = @"hp_logout_success_const";

+ (void)postLogoutSuccessNotification:(NSDictionary *)userInfo object:(id)object {
    [HPNotificationPostCenter postNotification:HPLogoutSuccessNotificationConst userInfo:userInfo object:object];
}

+ (void)registerLogoutSuccessNotificationObserver:(id)observer selector:(SEL)selector object:(id)object {
    [HPNotificationObserverCenter addObserver:observer forNotification:HPLogoutSuccessNotificationConst selector:selector object:object];
}

+ (void)unregisterLogoutSuccessNotificationObserver:(id)observer object:(id)object {
    [HPNotificationObserverCenter removeObserver:observer forNotification:HPLogoutSuccessNotificationConst object:object];
}

@end
