//
//  A_VideoViewControlProtocol.h
//  CKYSPlatform
//
//  Created by Yan on 2018/10/23.
//  Copyright © 2018 ckys. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, A_VideoViewActionType) {
    A_VideoViewActionTypeStart = 1,
    A_VideoViewActionTypeStop = 0,
};

@protocol A_VideoViewControlProtocol <NSObject>

- (void)setSourceCenterVideoViewActionType:(A_VideoViewActionType)type;

@end

NS_ASSUME_NONNULL_END
