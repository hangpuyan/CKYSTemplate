//
//  LoginServiceResult.h
//  CKYSTemplate
//
//  Created by Yan on 2018/11/9.
//  Copyright © 2018 YY. All rights reserved.
//

#import "NetworkServiceResult.h"

NS_ASSUME_NONNULL_BEGIN

/**
 登录接口返回通用模型 继承自NetworkServiceResult
 为什么不直接用基类？其实可以直接使用基类, 重新建一个类纯属是为了区分业务
 */
@interface LoginServiceResult : NetworkServiceResult

@end

NS_ASSUME_NONNULL_END
