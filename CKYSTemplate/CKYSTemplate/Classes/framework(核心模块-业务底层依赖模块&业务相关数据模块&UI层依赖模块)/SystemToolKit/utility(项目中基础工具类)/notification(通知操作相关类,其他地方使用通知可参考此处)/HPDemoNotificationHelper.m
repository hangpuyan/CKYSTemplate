//
//  HPDemoNotificationHelper.m
//  HPYSTemplate
//
//  Created by Yan on 2018/9/6.
//  Copyright © 2018年 YY. All rights reserved.
//

#import "HPDemoNotificationHelper.h"
#import "HPNotificationPostCenter.h"
#import "HPNotificationObserverCenter.h"

@implementation HPDemoNotificationHelper

static NSString *HPDemoNotificationConst = @"HPDemoNotificationConst";

+ (void)postDemoNotification:(NSDictionary *)userInfo object:(id)object {
    [HPNotificationPostCenter postNotification:HPDemoNotificationConst userInfo:userInfo object:object];
}

+ (void)addDemoNotificationObserver:(id)observer selector:(SEL)selector object:(id)object {
    [HPNotificationObserverCenter addObserver:observer forNotification:HPDemoNotificationConst selector:selector object:object];
}

+ (void)removeDemoNotificationObserver:(id)observer object:(id)object {
    [HPNotificationObserverCenter removeObserver:observer forNotification:HPDemoNotificationConst object:object];
}

@end
