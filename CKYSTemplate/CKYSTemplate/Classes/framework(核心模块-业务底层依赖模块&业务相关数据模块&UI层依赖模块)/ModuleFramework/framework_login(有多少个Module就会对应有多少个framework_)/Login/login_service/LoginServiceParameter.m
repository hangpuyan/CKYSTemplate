//
//  LoginServiceParameter.m
//  CKYSTemplate
//
//  Created by Yan on 2018/11/9.
//  Copyright © 2018 YY. All rights reserved.
//

#import "LoginServiceParameter.h"
#import "NSNilObjectHelper.h"

@interface LoginServiceParameter ()

@property (nonatomic, copy) NSString *userLoginId;

@property (nonatomic, copy) NSString *password;

@end

@implementation LoginServiceParameter

- (instancetype)initWithUserLoginId:(NSString *)userLoginId password:(NSString *)password {
    self = [super init];
    if (self) {
        
        if ([NSNilObjectHelper isNilOrNullObject:userLoginId]) {
            userLoginId = @"";
        }
        if ([NSNilObjectHelper isNilOrNullObject:password]) {
            password = @"";
        }
        _userLoginId = userLoginId;
        _password = password;
    }
    return self;
}

@end
