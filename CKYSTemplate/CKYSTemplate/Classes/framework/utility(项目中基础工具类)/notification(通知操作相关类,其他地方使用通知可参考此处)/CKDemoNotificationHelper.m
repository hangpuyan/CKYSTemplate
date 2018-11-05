//
//  CKDemoNotificationHelper.m
//  CKYSTemplate
//
//  Created by Yan on 2018/9/6.
//  Copyright © 2018年 YY. All rights reserved.
//

#import "CKDemoNotificationHelper.h"
#import "CKNotificationPostCenter.h"
#import "CKNotificationObserverCenter.h"

@implementation CKDemoNotificationHelper

static NSString *CKDemoNotificationConst = @"CKDemoNotificationConst";

+ (void)postDemoNotification:(NSDictionary *)userInfo object:(id)object {
    [CKNotificationPostCenter postNotification:CKDemoNotificationConst userInfo:userInfo object:object];
}

+ (void)addDemoNotificationObserver:(id)observer selector:(SEL)selector object:(id)object {
    [CKNotificationObserverCenter addObserver:observer forNotification:CKDemoNotificationConst selector:selector object:object];
}

+ (void)removeDemoNotificationObserver:(id)observer object:(id)object {
    [CKNotificationObserverCenter removeObserver:observer forNotification:CKDemoNotificationConst object:object];
}

@end
