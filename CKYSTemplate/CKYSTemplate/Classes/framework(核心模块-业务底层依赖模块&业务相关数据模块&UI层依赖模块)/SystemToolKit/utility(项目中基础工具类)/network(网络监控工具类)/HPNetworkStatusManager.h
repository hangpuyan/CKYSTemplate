//
//  HPNetworkStatusManager.h
//  CKYSTemplate
//
//  Created by Yan on 2018/9/6.
//  Copyright © 2018年 YY. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HPNetworkStatus: NSObject

- (bool)networkAvailable;

- (bool)wifiAvailale;

- (bool)wwanAvailable;

@end

@interface HPNetworkStatusManager : NSObject

+ (HPNetworkStatusManager *)manager;

- (void)registerNetworkChangeListener:(id)obj sel:(SEL)sel;
- (void)unRegisterNetworkChangeListener:(id)obj;

- (HPNetworkStatus *)currentHPNetworkStatus;

@end

