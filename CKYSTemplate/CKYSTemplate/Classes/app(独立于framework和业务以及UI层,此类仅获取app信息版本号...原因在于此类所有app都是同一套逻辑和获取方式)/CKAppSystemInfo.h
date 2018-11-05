//
//  CKAppSystemInfo.h
//  CKYSPlatform
//
//  Created by Yan on 2018/8/23.
//  Copyright © 2018年 ckys. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CKAppSystemInfo : NSObject

+ (NSString *)getImei;

+ (NSString *)getAppVersionCode;

+ (NSString *)getChannel;

+ (NSString *)getPlatform;

+ (long long)getSysTime;

@end
