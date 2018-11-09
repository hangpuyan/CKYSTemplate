//
//  HPNotificationObserverCenter.m
//  CKYSTemplate
//
//  Created by Yan on 2018/9/6.
//  Copyright © 2018年 YY. All rights reserved.
//

#import "HPNotificationObserverCenter.h"

@implementation HPNotificationObserverCenter

+ (void)addObserver:(id)observer forNotification:(NSString *)notification selector:(SEL)selector object:(id)object {
    [[NSNotificationCenter defaultCenter] addObserver:observer selector:selector name:notification object:object];
}

+ (void)removeObserver:(id)observer forNotification:(NSString *)notification  object:(id)object {
    [[NSNotificationCenter defaultCenter] removeObserver:observer name:notification object:object];
}

@end
