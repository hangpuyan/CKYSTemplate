//
//  HPNetworkStatusManager.m
//  CKYSTemplate
//
//  Created by Yan on 2018/9/6.
//  Copyright © 2018年 YY. All rights reserved.
//

#import "HPNetworkStatusManager.h"
#import <UIKit/UIKit.h>
#import <SystemConfiguration/SystemConfiguration.h>
#import "Reachability.h"

#define HP_NETWORK_CHANGED @"HP_NETWORK_CHANGED"

enum{
    HP_NETWORK_STATUS_NO_NETWORK = 0,
    HP_NETWORK_STATUS_2G = 1,
    HP_NETWORK_STATUS_3G = 2,
    HP_NETWORK_STATUS_4G = 3,
    HP_NETWORK_STATUS_LTE = 4,
    HP_NETWORK_STATUS_WIFI = 5,
};

@interface HPNetworkStatus(){
    int _status;
}

- (instancetype)initWithNetStatus:(int)status;

@end

@implementation HPNetworkStatus

- (instancetype)initWithNetStatus:(int)status{
    if(self = [super init]){
        _status = status;
    }
    return self;
}

- (bool)networkAvailable {
    return _status != HP_NETWORK_STATUS_NO_NETWORK;
}

- (bool)wifiAvailale {
    return _status == HP_NETWORK_STATUS_WIFI;
}

- (bool)wwanAvailable {
    return _status == HP_NETWORK_STATUS_3G || _status == HP_NETWORK_STATUS_4G || _status == HP_NETWORK_STATUS_LTE;
}

@end

@implementation HPNetworkStatusManager

+ (instancetype)manager {
    static HPNetworkStatusManager *sharedInstance = nil;
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
    int netWorkState = HP_NETWORK_STATUS_NO_NETWORK;
    switch (internetStatus) {
        case ReachableViaWiFi:
            netWorkState = HP_NETWORK_STATUS_WIFI;
            break;
        case ReachableViaWWAN:
            netWorkState = HP_NETWORK_STATUS_3G;
            break;
        case NotReachable:
            netWorkState = HP_NETWORK_STATUS_NO_NETWORK;
        default:
            break;
    }
    return netWorkState;
}

#define HP_SCREEN_HEIGHT_IPHONE_6P 736

- (HPNetworkStatus *)currentNetworkStatus {
    if ([UIScreen mainScreen].bounds.size.height>HP_SCREEN_HEIGHT_IPHONE_6P || ![NSThread isMainThread]) {
        return [[HPNetworkStatus alloc] initWithNetStatus:[self.class networkingStatusFromReachability]];
    } else {
        return [[HPNetworkStatus alloc] initWithNetStatus:[self.class networkingStatusFromStatebar]];
    }
}

- (void)registerNetworkChangeListener:(id)obj sel:(SEL)sel {
    [[NSNotificationCenter defaultCenter] addObserver:obj selector:sel name:HP_NETWORK_CHANGED object:nil];
}

- (void)unRegisterNetworkChangeListener:(id)obj {
    [[NSNotificationCenter defaultCenter] removeObserver:obj name:HP_NETWORK_CHANGED object:nil];
}

- (void)_fireNetworkChangeEvent:(int)status {
    [[NSNotificationCenter defaultCenter] postNotificationName:HP_NETWORK_CHANGED object:
     [[HPNetworkStatus alloc] initWithNetStatus:status]];
}

@end
