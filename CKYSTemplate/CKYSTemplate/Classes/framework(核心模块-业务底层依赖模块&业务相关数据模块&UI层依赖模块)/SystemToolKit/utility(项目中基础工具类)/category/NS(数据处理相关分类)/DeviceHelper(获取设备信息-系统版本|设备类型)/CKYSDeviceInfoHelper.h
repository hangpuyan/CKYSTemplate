//
//  CKYSDeviceInfoHelper.h
//  SystemInfo
//
//  Created by Yan on 2018/11/20.
//  Copyright © 2018 YY. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "CKYSDeviceInfoHelperProtocol.h"

NS_ASSUME_NONNULL_BEGIN

/**
 
 CKYSDeviceInfoHelper 使用Demo
 
 #import "ViewController.h"
 #import "CKYSDeviceInfoHelper.h"
 
 @interface ViewController ()
 
 @end
 
 @implementation ViewController
 
 - (void)viewDidLoad {
    [super viewDidLoad];
 
    NSString *imei = [CKYSDeviceInfoHelper getImei];
    NSString *channel = [CKYSDeviceInfoHelper getChannel];
    NSString *appVersion = [CKYSDeviceInfoHelper getAppVersionCode];
    NSString *platform = [CKYSDeviceInfoHelper getPlatform];
    long long time = [CKYSDeviceInfoHelper getSysTime];
    BOOL iPhone4 = [CKYSDeviceInfoHelper isIPhone_4];
    BOOL iPhoneX = [CKYSDeviceInfoHelper isIPhone_X_Class];
 }
 
 @end
 */

/** 设备信息相关 数据获取工具类 */
@interface CKYSDeviceInfoHelper : NSObject <CKYSDeviceInfoHelperProtocol>

@end

NS_ASSUME_NONNULL_END
