//
//  LoginDataItem.m
//  CKYSTemplate
//
//  Created by Yan on 2018/11/9.
//  Copyright © 2018 YY. All rights reserved.
//

#import "LoginDataItem.h"

@implementation LoginDataItem

#pragma mark - UserSexProtocol

- (USER_SEX_TYPE)getUserSexType {
    if (self.userSex == USER_SEX_TYPE_GIRL) {
        return USER_SEX_TYPE_GIRL;
    } else if (self.userSex == USER_SEX_TYPE_BOY) {
        return USER_SEX_TYPE_BOY;
    } else {
        return USER_SEX_TYPE_GAY;
    }
}

@end
