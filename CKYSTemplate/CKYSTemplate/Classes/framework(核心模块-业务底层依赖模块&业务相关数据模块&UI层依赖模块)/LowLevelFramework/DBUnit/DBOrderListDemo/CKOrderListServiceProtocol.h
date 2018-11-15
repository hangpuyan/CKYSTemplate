//
//  CKOrderListServiceProtocol.h
//  CKYSTemplate
//
//  Created by Yan on 2018/11/15.
//  Copyright © 2018 YY. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class CKOrderListItem;

/** 订单业务数据 操作服务接口 */
@protocol CKOrderListServiceProtocol <NSObject>

/** 写入业务数据 */
- (void)insertOrUpdateOrderListItem:(CKOrderListItem *)item;

/** 读取业务数据 */
- (NSArray <CKOrderListItem *> *)getOrderListItems;

@end

NS_ASSUME_NONNULL_END
