//
//  CKYSLoginView.h
//  CKYSTemplate
//
//  Created by Yan on 2018/11/21.
//  Copyright © 2018 YY. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, CKYS_LOGIN_ACTION_TYPE) {
    CKYS_LOGIN_ACTION_TYPE_LOGIN = 0,//登录
    CKYS_LOGIN_ACTION_TYPE_PHONE_NUMBER_ERROR = 1,//电话号码错误
    CKYS_LOGIN_ACTION_TYPE_INPUT_EMOJI = 2,//输入文本为表情
    CKYS_LOGIN_ACTION_TYPE_INPUT_PHONE_NUMBER_NULL = 3,//电话号码空
    CKYS_LOGIN_ACTION_TYPE_INPUT_PASSWORD_NULL = 4,//密码空
};

@protocol CKYSLoginViewDelegate <NSObject>

- (void)loginViewActionType:(CKYS_LOGIN_ACTION_TYPE)actionType;

@end

/** 用户名密码登录 视图 */
@interface CKYSLoginView : UIView

- (instancetype)initWithFrame:(CGRect)frame delegate:(id<CKYSLoginViewDelegate>)delegate;

@end

NS_ASSUME_NONNULL_END
