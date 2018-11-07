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
