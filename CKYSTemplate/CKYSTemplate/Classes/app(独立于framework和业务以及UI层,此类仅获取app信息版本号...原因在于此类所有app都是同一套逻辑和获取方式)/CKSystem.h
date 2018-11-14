//
//  CKSystem.h
//  CKYSTemplate
//
//  Created by Yan on 2018/11/11.
//  Copyright © 2018 YY. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class CKAppSystemInfo;

/** app 操作系统-调度中心 */
@interface CKSystem : NSObject

+ (CKSystem *)system;

- (instancetype)init:(CKAppSystemInfo *)systemInfo;

- (id)getServiceOfProtocol:(Protocol *)p;

+ (void)setSystem:(CKSystem *)systemImp;

@property(nonatomic, readonly) CKAppSystemInfo *systemInfo;

@end

NS_ASSUME_NONNULL_END
