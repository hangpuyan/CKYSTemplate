//
//  CKYSDeviceInfoHelper.m
//  SystemInfo
//
//  Created by Yan on 2018/11/20.
//  Copyright © 2018 YY. All rights reserved.
//

#import "CKYSDeviceInfoHelper.h"
#import <AdSupport/ASIdentifierManager.h>
#import "CKYSDeviceTypeInfo.h"

@implementation CKYSDeviceInfoHelper

#pragma mark - CKYSDeviceInfoHelperProtocol

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

+ (CGFloat)getDeviceSystemVersion {
    return [NSString stringWithFormat:@"%@",[UIDevice currentDevice].systemVersion].floatValue;
}

#pragma mark - CKYSDeviceTypeInfoProtocol

+ (BOOL)isIPhone_4 {
    return [CKYSDeviceTypeInfo isIPhone_4];
}

+ (BOOL)isIPhone_5 {
    return [CKYSDeviceTypeInfo isIPhone_5];
}

+ (BOOL)isIPhone_6 {
    return [CKYSDeviceTypeInfo isIPhone_6];
}

+ (BOOL)isIPhone_6_Plus {
    return [CKYSDeviceTypeInfo isIPhone_6_Plus];
}

+ (BOOL)isIPhone_X_Class {
    return [CKYSDeviceTypeInfo isIPhone_X_Class];
}

+ (BOOL)isIPhone_X {
    return [CKYSDeviceTypeInfo isIPhone_X];
}

+ (BOOL)isIPhone_XR {
    return [CKYSDeviceTypeInfo isIPhone_XR];
}

+ (BOOL)isIPhone_XS {
    return [CKYSDeviceTypeInfo isIPhone_XS];
}

+ (BOOL)isIPhone_XS_MAX {
    return [CKYSDeviceTypeInfo isIPhone_XS_MAX];
}

@end
