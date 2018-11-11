//
//  LoginDataItem.h
//  CKYSTemplate
//
//  Created by Yan on 2018/11/9.
//  Copyright © 2018 YY. All rights reserved.
//

#import "NetworkServiceItem.h"

NS_ASSUME_NONNULL_BEGIN

/** 定义一个枚举是为了让业务方更直观的知道用户性别, 而不是去猜 0 1 分别代表什么意思 */
typedef NS_ENUM(NSUInteger, USER_SEX_TYPE) {
    USER_SEX_TYPE_GIRL = 0,
    USER_SEX_TYPE_BOY = 1,
    USER_SEX_TYPE_GAY = -1,
};

/** 定义一个协议 是为了区分.h 文件中接口类型，明确目的,如果有多个函数分别是针对不同的业务则接口粒度越细使用方越清晰，一个接口中可以有多个函数，但有多个不同或者不相关业务的函数确实算不算好的接口 */
@protocol UserSexProtocol <NSObject>

- (USER_SEX_TYPE)getUserSexType;

@end

/** 登录成功服务端返回数据结构 - */
@interface LoginDataItem : NetworkServiceItem <UserSexProtocol>

@property (nonatomic, assign, readonly) int userAge;

@property (nonatomic, assign, readonly) int userSex;

@property (nonatomic, copy, readonly) NSString *userName;

@property (nonatomic, copy, readonly) NSString *userHeadUrl;

@end

NS_ASSUME_NONNULL_END
