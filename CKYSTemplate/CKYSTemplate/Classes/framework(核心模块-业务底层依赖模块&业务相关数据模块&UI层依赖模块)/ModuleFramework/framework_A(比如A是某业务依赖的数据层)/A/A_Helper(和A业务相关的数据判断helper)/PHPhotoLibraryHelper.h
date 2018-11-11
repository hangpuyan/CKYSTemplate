//
//  PHPhotoLibraryHelper.h
//  CKYSPlatform
//
//  Created by Yan on 2018/10/30.
//  Copyright © 2018 ckys. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^CKYSPhotoLibraryBlock)(BOOL isCanUse);

/** 相册权限判断 */
@interface PHPhotoLibraryHelper : NSObject

+ (void)isCanUsePhotoCompleteHandle:(CKYSPhotoLibraryBlock)completeHandle;

@end

NS_ASSUME_NONNULL_END
