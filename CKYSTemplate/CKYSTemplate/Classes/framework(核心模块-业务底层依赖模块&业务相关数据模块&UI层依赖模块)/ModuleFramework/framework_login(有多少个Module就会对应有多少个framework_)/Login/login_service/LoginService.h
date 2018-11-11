//
//  LoginService.h
//  CKYSTemplate
//
//  Created by Yan on 2018/11/9.
//  Copyright © 2018 YY. All rights reserved.
//

#import "NetworkService.h"

NS_ASSUME_NONNULL_BEGIN

@class LoginServiceParameter, LoginServiceResult;

/** 登录服务接口数据获取类 继承自 NetworkService */
@interface LoginService : NetworkService

+ (void)loginRequestServerWithParameter:(LoginServiceParameter *)parameter completeHandle:(void(^)(LoginServiceResult *loginServiceResult))completeHandle failure:(void(^)(NSError *error))failure;

@end

NS_ASSUME_NONNULL_END
