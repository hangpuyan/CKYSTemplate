//
//  A_ServiceParameter.h
//  CKYSPlatform
//
//  Created by Yan on 2018/10/16.
//  Copyright © 2018 ckys. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/**
 请求接口参数
 1. 属性设置为 readonly
 2. 只提供初始化接口进行数据写入防止数据入侵
 3. 请求参数数据类型 个人建议请求接口参数类型进行细分 int long string 
 */

@interface A_ServiceParameter : NSObject

@property (nonatomic, copy, readonly) NSString *xxxId;

@property (nonatomic, assign, readonly) int pageSize;

@property (nonatomic, assign, readonly) int pageNumber;

- (instancetype)initWithXXXId:(NSString *)xxxId pageSize:(int)pageSize pageNumber:(int)pageNumber;

@end

NS_ASSUME_NONNULL_END
