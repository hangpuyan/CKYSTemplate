//
//  CKYSDeviceTypeInfoProtocol.h
//  SystemInfo
//
//  Created by Yan on 2018/11/20.
//  Copyright © 2018 YY. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/** 设备类型-判断协议 */
@protocol CKYSDeviceTypeInfoProtocol <NSObject>

/** 设备类型-判断 */
+ (BOOL)isIPhone_4;
+ (BOOL)isIPhone_5;
+ (BOOL)isIPhone_6;
+ (BOOL)isIPhone_6_Plus;

+ (BOOL)isIPhone_X;
+ (BOOL)isIPhone_XR;
+ (BOOL)isIPhone_XS;
+ (BOOL)isIPhone_XS_MAX;

+ (BOOL)isIPhone_X_Class;

/** 设备类型-获取 */
+ (NSString *)getCurrentDeviceModel;

@end

NS_ASSUME_NONNULL_END
