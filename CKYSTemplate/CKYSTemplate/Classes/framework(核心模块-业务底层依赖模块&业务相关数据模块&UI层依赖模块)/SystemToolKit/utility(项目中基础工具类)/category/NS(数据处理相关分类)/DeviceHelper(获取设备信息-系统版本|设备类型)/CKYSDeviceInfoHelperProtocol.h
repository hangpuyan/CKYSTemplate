//
//  CKYSDeviceInfoHelperProtocol.h
//  SystemInfo
//
//  Created by Yan on 2018/11/20.
//  Copyright © 2018 YY. All rights reserved.
//

#import "CKYSDeviceTypeInfoProtocol.h"

NS_ASSUME_NONNULL_BEGIN

hh
@protocol CKYSDeviceInfoHelperProtocol <CKYSDeviceTypeInfoProtocol>

/** app IMEI */
+ (NSString *)getImei;

/** app 版本号 */
+ (NSString *)getAppVersionCode;

/** app 渠道 */
+ (NSString *)getChannel;

/** app 平台 */
+ (NSString *)getPlatform;

/** app 系统时间 */
+ (long long)getSysTime;

/** 设备系统版本 */
+ (CGFloat)getDeviceSystemVersion;

@end

NS_ASSUME_NONNULL_END
