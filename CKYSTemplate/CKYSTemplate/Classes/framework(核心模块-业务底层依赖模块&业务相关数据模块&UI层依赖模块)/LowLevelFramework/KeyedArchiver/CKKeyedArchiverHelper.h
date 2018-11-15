//
//  CKKeyedArchiverHelper.h
//  CKYSTemplate
//
//  Created by Yan on 2018/11/15.
//  Copyright © 2018 YY. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/** 统一使用此类进行归档 解档保证线程安全 */
@interface CKKeyedArchiverHelper : NSObject

/** 初始化一个路径 */
- (instancetype)initWithFileName:(NSString *)fileName;

/** 归档 传入参数需要准守归档解档协议 */
- (void)archiverRootObj:(id)obj;

/** 解档 */
- (id)unArchiver;

@end

NS_ASSUME_NONNULL_END
