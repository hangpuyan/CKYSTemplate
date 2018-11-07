//
//  PHPhotoLibraryHelper.m
//  CKYSPlatform
//
//  Created by Yan on 2018/10/30.
//  Copyright © 2018 ckys. All rights reserved.
//

#import "PHPhotoLibraryHelper.h"
#import <Photos/Photos.h>

@implementation PHPhotoLibraryHelper

+ (void)isCanUsePhotoCompleteHandle:(CKYSPhotoLibraryBlock)completeHandle {
    [PHPhotoLibrary requestAuthorization:^(PHAuthorizationStatus status) {
        if (status == PHAuthorizationStatusRestricted || status == PHAuthorizationStatusDenied) {
            if (completeHandle) {
                completeHandle(NO);
            }
        } else {
            if (completeHandle) {
                completeHandle(YES);
            }
        }
    }];
}

@end
