//
//  CKOrderListServiceTable.h
//  CKYSTemplate
//
//  Created by Yan on 2018/11/15.
//  Copyright © 2018 YY. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CKOrderListServiceProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@class FMDatabaseQueue, CKOrderListItem;

/** 订单业务数据 db 表 操作  */
@interface CKOrderListServiceTable : NSObject <CKOrderListServiceProtocol>

- (instancetype)initWithDBQueue:(FMDatabaseQueue*)dbQueue;

@end

NS_ASSUME_NONNULL_END
