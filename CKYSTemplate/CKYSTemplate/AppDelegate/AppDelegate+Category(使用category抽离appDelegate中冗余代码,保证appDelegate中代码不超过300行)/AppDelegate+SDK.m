//
//  AppDelegate+SDK.m
//  HPTemplate
//
//  Created by Yan on 2018/11/5.
//  Copyright © 2018 YY. All rights reserved.
//

#import "AppDelegate+SDK.h"
#import "HPBuglyHelper.h"
#import "HPSDKInitManager.h"

@implementation AppDelegate (SDK)

- (void)initSDK {
    
    [HPSDKInitManager initSDK];
}

@end
