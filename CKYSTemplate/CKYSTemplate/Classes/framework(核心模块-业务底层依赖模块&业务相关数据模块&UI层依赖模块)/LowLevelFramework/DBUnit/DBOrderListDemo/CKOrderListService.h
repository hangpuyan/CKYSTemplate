//
//  CKOrderListService.h
//  CKYSTemplate
//
//  Created by Yan on 2018/11/15.
//  Copyright © 2018 YY. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CKOrderListServiceProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@class FMDatabaseQueue;

/** 订单业务数据 操作服务类 */
@interface CKOrderListService : NSObject <CKOrderListServiceProtocol>

- (instancetype)initWithDB:(FMDatabaseQueue *)dbQueue user:(id)user;

@end

NS_ASSUME_NONNULL_END
