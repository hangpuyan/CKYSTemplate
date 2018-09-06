//
//  CKNotificationObserverCenter.h
//  CKYSTemplate
//
//  Created by Yan on 2018/9/6.
//  Copyright © 2018年 YY. All rights reserved.
//

#import <Foundation/Foundation.h>

/** 工程中所有需要监听和移除通知 由此类完成 */
@interface CKNotificationObserverCenter : NSObject

+ (void)addObserver:(id)observer forNotification:(NSString *)notification selector:(SEL)selector object:(id)object;

+ (void)removeObserver:(id)observer forNotification:(NSString *)notification  object:(id)object;

@end
