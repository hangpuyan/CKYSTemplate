//
//  A_Service.h
//  CKYSPlatform
//
//  Created by Yan on 2018/10/16.
//  Copyright © 2018 ckys. All rights reserved.
//

#import "NetworkService.h"

NS_ASSUME_NONNULL_BEGIN

#warning 在.h 文件中实用 @class 前置声明，在.m 文件中s import 导入,防止循环依赖，导致项目依赖混乱，时间

@class A_ServiceParameter, A_ServiceResult;

/**
 请求 A 接口服务类
 1. 继承自 NetworkService, 由 NetworkService 提供实际的请求网络接口
 2. A_Service 实际是依赖于底层网络请求模块的一个业务模块
 3. 传入参数 A_ServiceParameter
 4. 成功返回 A_ServiceResult
 5. 失败返回失败结果 NSError
 6. 在.h 文件中实用 @class 前置声明，在.m 文件中s import 导入
 */
@interface A_Service : NetworkService

+ (void)getResourceDataServiceWithParameter:(A_ServiceParameter *)parameter completeHandle:(void(^)(A_ServiceResult *result))completeHandle failure:(void(^)(NSError *error))failure;

@end 

NS_ASSUME_NONNULL_END
