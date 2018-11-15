//
//  DocumentDirectoryHelper.h
//  CKYSTemplate
//
//  Created by Yan on 2018/11/15.
//  Copyright © 2018 YY. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/** 获取沙盒路径 */
@interface DocumentDirectoryHelper : NSObject

+ (NSString *)documentDirectoryPath;

+ (NSString *)cachesDirectoryPath;

+ (NSString *)libraryDirectoryPath;

+ (NSString *)temporaryDirectoryPath;

@end

NS_ASSUME_NONNULL_END
