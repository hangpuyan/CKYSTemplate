//
//  A_UserInfoView.h
//  CKYSPlatform
//
//  Created by Yan on 2018/10/31.
//  Copyright © 2018 ckys. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class A_ViewerUserInfoItem;

@protocol A_UserInfoViewDataProtocol <NSObject>

- (void)setUserInfoData:(A_ViewerUserInfoItem *)userInfoItem;

@end

extern CGFloat A_UserInfoViewHeight;

@interface A_UserInfoView : UIView <A_UserInfoViewDataProtocol>

@end

NS_ASSUME_NONNULL_END
