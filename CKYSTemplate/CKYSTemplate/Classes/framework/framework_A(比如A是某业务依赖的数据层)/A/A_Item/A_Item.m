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

@end

@implementation A_Item

- (NSString *)getResStatusString {
    
    return @"";
}

- (NSArray <NSString *>*)getImageUrlList {
    NSMutableArray *imageUrlList = [NSMutableArray array];
    
    return imageUrlList.mutableCopy;
}

- (BOOL)isSingleImageCell {
    return [self getImageUrlList].count==1;
}

- (NSString *)getSupportParameterOperationString {
    return @"1";
}

- (BOOL)isMyselfSource {
    
    return YES;
}

- (BOOL)isCanRewardOperation {
    return ![self isMyselfSource] && [self isSelfNotRewardOtherSource];
}

- (BOOL)isSelfNotRewardOtherSource {
    return YES;
}

- (BOOL)isSelfNotSupportOtherSource {
    return NO;
}

- (void)setSelfSupportActionState:(BOOL)state {
    
}

- (void)setSelfRewardActionState:(BOOL)state {
    
}

#pragma mark - A_AllTextProtocol
- (BOOL)isCanJumpToAllTextDetailPageOnMinePage {
    return YES;
}

- (BOOL)isVideoInvalidate {

    return NO;
}

- (void)setVideoUrl:(NSString *)videoUrl {

}

- (void)setVideoExpiryDate:(NSString *)expiryDate {

}

- (void)setVideoPhotoUrl:(NSString *)videoPhotoUrl {

}

- (BOOL)isVideoTypeResource {

    return YES;    
}

@end
