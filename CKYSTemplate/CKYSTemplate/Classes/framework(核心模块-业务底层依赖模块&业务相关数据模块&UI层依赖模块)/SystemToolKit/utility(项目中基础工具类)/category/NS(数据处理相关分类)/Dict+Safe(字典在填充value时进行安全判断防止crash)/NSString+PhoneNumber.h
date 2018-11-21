//
//  NSString+PhoneNumber.h
//  CKYSTemplate
//
//  Created by Yan on 2018/11/21.
//  Copyright © 2018 YY. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (PhoneNumber)

+ (BOOL)checkPhoneNumber:(NSString *)phoneNumber;

+ (BOOL)checkEmail:(NSString *)email;

@end

NS_ASSUME_NONNULL_END
