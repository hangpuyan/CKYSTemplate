//
//  A_Item.m
//  CKYSPlatform
//
//  Created by Yan on 2018/10/16.
//  Copyright © 2018 ckys. All rights reserved.
//

#import "A_Item.h"
#import "CKAppSystemInfo.h"

@interface A_Item ()

@property (nonatomic, strong) NSMutableArray <NSString *>*imageUrlList;

@end

@implementation A_Item

#pragma mark - A_RewardProtocol

- (BOOL)isSelfNotRewardOtherSource {
    return YES;
}

- (BOOL)isMyselfSource {
    return YES;
}

- (BOOL)isCanRewardOperation {
    return YES;
}

- (void)setSelfRewardActionState:(BOOL)state {
    
}

#pragma mark - A_SupportProtocol

- (NSString *)getSupportParameterOperationString {
    return nil;
}

- (BOOL)isSelfNotSupportOtherSource {
    return YES;
}

- (void)setSelfSupportActionState:(BOOL)state {
    
}

#pragma mark - A_StatusProtocol

- (NSString *)getResourceStatusString {
    return nil;
}

#pragma mark - A_ImageProtocol

- (NSArray <NSString *>*)getImageUrlList {
    return nil;
}

- (BOOL)isSingleImageCell {
    return YES;
}
#pragma mark - A_AllTextProtocol

- (BOOL)isCanJumpToAllTextDetailPageOnMinePage {
    return YES;
}

#pragma mark - A_ShareDataProtocol

- (A_Item *)getSharePhotoItemList {
    return nil;
}

#pragma mark - A_VideoDateProtocol

- (BOOL)isVideoInvalidate {
    return YES;
}

#pragma mark - A_VideoDataProtocol

- (BOOL)isVideoTypeResource {
    return YES;
}

- (void)setVideoUrl:(NSString *)videoUrl {
    
}

- (void)setVideoExpiryDate:(NSString *)expiryDate {
    
}

- (void)setVideoPhotoUrl:(NSString *)videoPhotoUrl {
    
}

@end
