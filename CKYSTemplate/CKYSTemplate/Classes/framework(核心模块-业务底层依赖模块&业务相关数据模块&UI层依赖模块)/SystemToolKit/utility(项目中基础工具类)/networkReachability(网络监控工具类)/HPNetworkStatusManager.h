//
//  HPNetworkStatusManager.h
//  CKYSTemplate
//
//  Created by Yan on 2018/9/6.
//  Copyright © 2018年 YY. All rights reserved.
//

#import <Foundation/Foundation.h>

/** 网络状态 */
@interface HPNetworkStatus: NSObject

- (bool)networkAvailable;

- (bool)wifiAvailale;

- (bool)wwanAvailable;

@end

/** 网络监控状态管理者 */
@interface HPNetworkStatusManager : NSObject

+ (HPNetworkStatusManager *)manager;

- (void)registerNetworkChangeListener:(id)obj sel:(SEL)sel;
- (void)unRegisterNetworkChangeListener:(id)obj;

- (HPNetworkStatus *)currentHPNetworkStatus;

@end

