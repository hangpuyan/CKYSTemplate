//
//  LoginServiceParameter.h
//  CKYSTemplate
//
//  Created by Yan on 2018/11/9.
//  Copyright © 2018 YY. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/**
 登录请求参数
 1. 属性设置为 readonly
 2. 只提供初始化接口进行数据写入防止数据入侵
 */
@interface LoginServiceParameter : NSObject

@property (nonatomic, copy, readonly) NSString *userLoginId;

@property (nonatomic, copy, readonly) NSString *password;

- (instancetype)initWithUserLoginId:(NSString *)userLoginId password:(NSString *)password;

@end

NS_ASSUME_NONNULL_END
