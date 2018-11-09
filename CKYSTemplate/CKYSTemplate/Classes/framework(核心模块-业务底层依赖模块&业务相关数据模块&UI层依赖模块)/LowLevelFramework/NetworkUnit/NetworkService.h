//
//  NetworkService.h
//  CKYSTemplate
//
//  Created by Yan on 2018/11/9.
//  Copyright © 2018 YY. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/**
 网络请求基类
 所有业务中的网络请求继承自此类
 此类提供 GET POST 请求接口
 */
@interface NetworkService : NSObject

+ (void)getRequestServerWithUrl:(NSString *)url parameter:(NSDictionary *)parameter completeHandle:(void(^)(id result))completeHandle failure:(void(^)(NSError *error))failure;

+ (void)postRequestServerWithUrl:(NSString *)url parameter:(NSDictionary *)parameter completeHandle:(void(^)(id result))completeHandle failure:(void(^)(NSError *error))failure;

@end

NS_ASSUME_NONNULL_END
