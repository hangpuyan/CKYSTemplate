//
//  LoginDataHelper.h
//  CKYSTemplate
//
//  Created by Yan on 2018/11/9.
//  Copyright © 2018 YY. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class LoginDataItem;

@interface LoginDataHelper : NSObject

+ (void)saveLoginDataItem:(LoginDataItem *)loginDataItem;

+ (LoginDataItem *)loadLoginDataItem;

@end

NS_ASSUME_NONNULL_END
