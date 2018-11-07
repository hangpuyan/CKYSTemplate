//
//  HPNotificationPostCenter.h
//  CKYSTemplate
//
//  Created by Yan on 2018/9/6.
//  Copyright © 2018年 YY. All rights reserved.
//

#import <Foundation/Foundation.h>

/** 工程中所有需要发送的通知 由此类完成 */
@interface HPNotificationPostCenter : NSObject

+ (void)postNotification:(NSString *)notification userInfo:(NSDictionary *)userInfo object:(id)object;

@end
