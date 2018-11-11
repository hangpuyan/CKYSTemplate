//
//  HPSDKInitManager.m
//  HPTemplate
//
//  Created by Yan on 2018/11/5.
//  Copyright © 2018 YY. All rights reserved.
//

#import "HPSDKInitManager.h"
#import "HPBuglyHelper.h"
#import "HPBaiduMapHelper.h"

@implementation HPSDKInitManager

+ (void)initSDK {

#warning todo...init UM & BaiduMap or other SDK
    [self initBugly];
}

+ (void)initBugly {
    [HPBuglyHelper initBugly];
}
+ (void)initBaiduMap {
    [HPBaiduMapHelper initBaiduMapSDK];
}


@end
