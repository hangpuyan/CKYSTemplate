//
//  HPBaiduMapHelper.h
//  HPTemplate
//
//  Created by Yan on 2018/11/5.
//  Copyright © 2018 YY. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HPBaiduMapHelper : NSObject

+ (void)initBaiduMapSDK;

/** 此处a开启定位是需要在某一个页面中，并且需要拿到回调数据位置信息，因此此处不可以使用HPSDKInitManager 进行封装 应该和初始化隔离开来 */
+ (void)startLocationWithDelegate:(id)delegate;

+ (void)stopLocation;

@end

NS_ASSUME_NONNULL_END
