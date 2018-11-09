//
//  A_Item.h
//  CKYSPlatform
//
//  Created by Yan on 2018/10/16.
//  Copyright © 2018 ckys. All rights reserved.
//

#import "HPBaseItem.h"

NS_ASSUME_NONNULL_BEGIN

@protocol A_RewardProtocol <NSObject>

- (BOOL)isSelfNotRewardOtherSource;

- (BOOL)isMyselfSource;

- (BOOL)isCanRewardOperation;

- (void)setSelfRewardActionState:(BOOL)state;

@end

@protocol A_SupportProtocol <NSObject>

- (NSString *)getSupportParameterOperationString;

- (BOOL)isSelfNotSupportOtherSource;

- (void)setSelfSupportActionState:(BOOL)state;

@end

@protocol A_StatusProtocol <NSObject>

- (NSString *)getResStatusString;

- (NSArray <NSString *>*)getImageUrlList;

- (BOOL)isSingleImageCell;

@end

@protocol A_ImageProtocol <NSObject>

- (NSArray <NSString *>*)getImageUrlList;

- (BOOL)isSingleImageCell;

@end

@protocol A_AllTextProtocol <NSObject>

- (BOOL)isCanJumpToAllTextDetailPageOnMinePage;

@end

@class A_Item;

@protocol A_ShareDataProtocol <NSObject>

- (A_Item *)getSharePhotoItemList;

@end

@protocol A_VideoDateProtocol <NSObject>

- (BOOL)isVideoInvalidate;

@end

@protocol A_VideoDataProtocol <NSObject>

- (void)setVideoUrl:(NSString *)videoUrl;

- (void)setVideoExpiryDate:(NSString *)expiryDate;

- (void)setVideoPhotoUrl:(NSString *)videoPhotoUrl;

- (BOOL)isVideoTypeResource;

@end

@class A_PhotosItem;

/**
 服务端返回模型数据item
 1. 面向接口编程，实用协议将操作该模型数据的定义出来进行分类，有助于其他开发阅读代码
 2. 服务端返回的数据使用readonly属性，需要修改的属性提供set接口，防止数据入侵,
 3. 在多线程操作的数据提供copy mutableCopy 接口, 必要时 atomic 加锁，推荐在外层加锁保证数据准确
 4. 在 .h 中使用前置声明，在.m 中import 导入
 */
@interface A_Item : HPBaseItem

<A_RewardProtocol,
A_SupportProtocol,
A_StatusProtocol,
A_ImageProtocol,
A_AllTextProtocol,
A_VideoDateProtocol,
A_VideoDataProtocol,
A_ShareDataProtocol>

@end

NS_ASSUME_NONNULL_END
