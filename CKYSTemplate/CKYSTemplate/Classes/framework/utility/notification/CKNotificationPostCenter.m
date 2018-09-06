//
//  CKNotificationPostCenter.m
//  CKYSTemplate
//
//  Created by Yan on 2018/9/6.
//  Copyright © 2018年 YY. All rights reserved.
//

#import "CKNotificationPostCenter.h"

@implementation CKNotificationPostCenter

+ (void)postNotification:(NSString *)notification userInfo:(NSDictionary *)userInfo object:(id)object {
    dispatch_async(dispatch_get_main_queue(), ^{
        [[NSNotificationCenter defaultCenter] postNotificationName:notification object:object userInfo:userInfo];
    });
}

@end
