//
//  LoginNotificationHelper.m
//  CKYSTemplate
//
//  Created by Yan on 2018/11/9.
//  Copyright © 2018 YY. All rights reserved.
//

#import "LoginNotificationHelper.h"
#import "HPNotificationPostCenter.h"
#import "HPNotificationObserverCenter.h"

@implementation LoginNotificationHelper

static NSString *HPLoginSuccessNotificationConst = @"hp_login_success_const";

+ (void)postLoginSuccessNotification:(NSDictionary *)userInfo object:(id)object {
    [HPNotificationPostCenter postNotification:HPLoginSuccessNotificationConst userInfo:userInfo object:object];
}

+ (void)registerLoginSuccessNotificationObserver:(id)observer selector:(SEL)selector object:(id)object {
    [HPNotificationObserverCenter addObserver:observer forNotification:HPLoginSuccessNotificationConst selector:selector object:object];
}

+ (void)unregisterLoginSuccessNotificationObserver:(id)observer object:(id)object {
    [HPNotificationObserverCenter removeObserver:observer forNotification:HPLoginSuccessNotificationConst object:object];
}

@end
