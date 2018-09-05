//
//  CKAppSystemInfo.m
//  CKYSPlatform
//
//  Created by Yan on 2018/8/23.
//  Copyright © 2018年 ckys. All rights reserved.
//

#import "CKAppSystemInfo.h"
#import <AdSupport/ASIdentifierManager.h>

@implementation CKAppSystemInfo

+ (NSString *)getImei {
    return [[[ASIdentifierManager sharedManager] advertisingIdentifier] UUIDString];
}

+ (NSString *)getAppVersionCode {
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
}

+ (NSString *)getChannel {
    return @"appstore";
}

+ (NSString *)getPlatform {
    return @"2";
}

+ (long long)getSysTime {
    return (long long)([[NSDate date] timeIntervalSince1970]*1000);
}

@end
