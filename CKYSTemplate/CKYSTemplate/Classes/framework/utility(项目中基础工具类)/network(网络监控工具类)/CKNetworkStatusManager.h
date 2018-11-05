//
//  CKNetworkStatusManager.h
//  CKYSTemplate
//
//  Created by Yan on 2018/9/6.
//  Copyright © 2018年 YY. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CKNetworkStatus: NSObject

- (bool)networkAvailable;

- (bool)wifiAvailale;

- (bool)wwanAvailable;

@end


@interface CKNetworkStatusManager : NSObject

+ (CKNetworkStatusManager *)manager;

- (void)registerNetworkChangeListener:(id)obj sel:(SEL)sel;
- (void)unRegisterNetworkChangeListener:(id)obj;

- (CKNetworkStatus *)currentNetworkStatus;

@end

