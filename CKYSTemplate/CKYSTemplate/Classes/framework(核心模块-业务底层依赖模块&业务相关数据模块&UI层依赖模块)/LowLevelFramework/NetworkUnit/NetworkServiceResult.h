//
//  NetworkServiceResult.h
//  CKYSTemplate
//
//  Created by Yan on 2018/11/9.
//  Copyright © 2018 YY. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol NetworkServiceResultProtocol <NSObject>

/** 判断请求接口是否成功 */
- (BOOL)isRequestServiceSuccess;

@end

/**
 网络请求结果基类
 所有业务中的网络请求结果继承自此类,
 此处需要所有接口定义时格式一致
    code
    msg
    data
 此类提供 判断请求是否成功接口 isRequestServiceSuccess
 */
@interface NetworkServiceResult : NSObject <NetworkServiceResultProtocol>

/** 接口返回状态码 成功：200 */
@property (nonatomic, assign, readonly) int code;

/** 接口返回状态码信息 失败时：失败原因 */
@property (nonatomic, copy, readonly) NSString *msg;

/** 接口返回数据json */
@property (nonatomic, copy, readonly) NSDictionary *data;

@end

NS_ASSUME_NONNULL_END
