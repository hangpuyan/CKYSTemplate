//
//  CKAppSystemInfo.h
//  CKYSPlatform
//
//  Created by Yan on 2018/8/23.
//  Copyright © 2018年 ckys. All rights reserved.
//

#import <Foundation/Foundation.h>

/** app 系统信息管理类 */
@interface CKAppSystemInfo : NSObject

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

@end
