//
//  CKYSSDKInitManager.h
//  CKYSTemplate
//
//  Created by Yan on 2018/11/5.
//  Copyright © 2018 YY. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/** SDKInitManager(SDK相关初始化也可以创建一个Manager进行统一初始化,但仅限于在AppDelegate中,如果其他地方使用单独的SDK建议使用某个Helper类去在其他地方做操作,减少AppDelegate和其他业务由于SDKManager变更产生无关依赖) */

@interface CKYSSDKInitManager : NSObject

+ (void)initSDK;

@end

NS_ASSUME_NONNULL_END
