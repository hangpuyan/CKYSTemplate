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

/** 图片预览-点击放大-顶部用户信息UI header name */
@interface A_UserInfoView : UIView <A_UserInfoViewDataProtocol>

@end

NS_ASSUME_NONNULL_END
