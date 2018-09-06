//
//  CKNetworkStatusManager.m
//  CKYSTemplate
//
//  Created by Yan on 2018/9/6.
//  Copyright © 2018年 YY. All rights reserved.
//

#import "CKNetworkStatusManager.h"
#import <UIKit/UIKit.h>
#import <SystemConfiguration/SystemConfiguration.h>
#import "Reachability.h"

#define CK_NETWORK_CHANGED @"CK_NETWORK_CHANGED"

enum{
    CK_NETWORK_STATUS_NO_NETWORK = 0,
    CK_NETWORK_STATUS_2G = 1,
    CK_NETWORK_STATUS_3G = 2,
    CK_NETWORK_STATUS_4G = 3,
    CK_NETWORK_STATUS_LTE = 4,
    CK_NETWORK_STATUS_WIFI = 5,
};

@interface CKNetworkStatus(){
    int _status;
}

- (instancetype)initWithNetStatus:(int)status;

@end

@implementation CKNetworkStatus

- (instancetype)initWithNetStatus:(int)status{
    if(self = [super init]){
        _status = status;
    }
    return self;
}

- (bool)networkAvailable {
    return _status != CK_NETWORK_STATUS_NO_NETWORK;
}

- (bool)wifiAvailale {
    return _status == CK_NETWORK_STATUS_WIFI;
}

- (bool)wwanAvailable {
    return _status == CK_NETWORK_STATUS_3G || _status == CK_NETWORK_STATUS_4G || _status == CK_NETWORK_STATUS_LTE;
}

@end

@implementation CKNetworkStatusManager

+ (instancetype)manager {
    static CKNetworkStatusManager *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}


+ (int)networkingStatusFromStatebar {
    UIApplication *app = [UIApplication sharedApplication];
    NSArray *children = [[[app valueForKeyPath:@"statusBar"] valueForKeyPath:@"foregroundView"] subviews];
    int type = 0;
    for (id child in children) {
        if ([child isKindOfClass:[NSClassFromString(@"UIStatusBarDataNetworkItemView") class]]) {
            type = [[child valueForKeyPath:@"dataNetworkType"] intValue];
        }
    }
    return type;
}

+ (int)networkingStatusFromReachability {
    Reachability *reachability   = [Reachability reachabilityWithHostName:@"www.apple.com"];
    NetworkStatus internetStatus = [reachability currentReachabilityStatus];
    int netWorkState = CK_NETWORK_STATUS_NO_NETWORK;
    switch (internetStatus) {
        case ReachableViaWiFi:
            netWorkState = CK_NETWORK_STATUS_WIFI;
            break;
        case ReachableViaWWAN:
            netWorkState = CK_NETWORK_STATUS_3G;
            break;
        case NotReachable:
            netWorkState = CK_NETWORK_STATUS_NO_NETWORK;
        default:
            break;
    }
    return netWorkState;
}

#define CK_SCREEN_HEIGHT_IPHONE_6P 736

- (CKNetworkStatus *)currentNetworkStatus {
    if ([UIScreen mainScreen].bounds.size.height>CK_SCREEN_HEIGHT_IPHONE_6P || ![NSThread isMainThread]) {
        return [[CKNetworkStatus alloc] initWithNetStatus:[self.class networkingStatusFromReachability]];
    } else {
        return [[CKNetworkStatus alloc] initWithNetStatus:[self.class networkingStatusFromStatebar]];
    }
}

- (void)registerNetworkChangeListener:(id)obj sel:(SEL)sel {
    [[NSNotificationCenter defaultCenter] addObserver:obj selector:sel name:CK_NETWORK_CHANGED object:nil];
}

- (void)unRegisterNetworkChangeListener:(id)obj {
    [[NSNotificationCenter defaultCenter] removeObserver:obj name:CK_NETWORK_CHANGED object:nil];
}

- (void)_fireNetworkChangeEvent:(int)status {
    [[NSNotificationCenter defaultCenter] postNotificationName:CK_NETWORK_CHANGED object:
     [[CKNetworkStatus alloc] initWithNetStatus:status]];
}

@end
