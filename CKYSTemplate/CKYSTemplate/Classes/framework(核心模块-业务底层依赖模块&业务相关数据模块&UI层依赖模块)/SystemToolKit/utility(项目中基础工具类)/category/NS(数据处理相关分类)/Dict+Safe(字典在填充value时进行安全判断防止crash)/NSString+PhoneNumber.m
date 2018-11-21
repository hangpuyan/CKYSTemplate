//
//  NSString+PhoneNumber.m
//  CKYSTemplate
//
//  Created by Yan on 2018/11/21.
//  Copyright © 2018 YY. All rights reserved.
//

#import "NSString+PhoneNumber.h"

@implementation NSString (PhoneNumber)

+ (BOOL)checkPhoneNumber:(NSString *)phoneNumber {
    NSString *regex = @"^((13[0-9])|(147)|(15[^4,\\D])|(18[0-9])|(17[0-9]))\\d{8}$";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    BOOL isMatch = [pred evaluateWithObject:phoneNumber];
    if (!isMatch) {
        return NO;
    }
    return YES;
}

#pragma mark 判断邮箱

+ (BOOL)checkEmail:(NSString *)email{
    //^(\\w)+(\\.\\w+)*@(\\w)+((\\.\\w{2,3}){1,3})$
    NSString *regex = @"^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\\.[a-zA-Z0-9_-]+)+$";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    return [emailTest evaluateWithObject:email];
}

@end
