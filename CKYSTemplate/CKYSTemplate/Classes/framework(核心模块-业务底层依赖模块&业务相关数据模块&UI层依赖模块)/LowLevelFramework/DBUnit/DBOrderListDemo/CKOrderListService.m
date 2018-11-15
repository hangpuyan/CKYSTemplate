//
//  CKOrderListService.m
//  CKYSTemplate
//
//  Created by Yan on 2018/11/15.
//  Copyright © 2018 YY. All rights reserved.
//

#import "CKOrderListService.h"
#import "CKOrderListServiceTable.h"

@implementation CKOrderListService {
    CKOrderListServiceTable *_orderListTable;
    id _user;
}

- (instancetype)initWithDB:(FMDatabaseQueue *)dbQueue user:(id)user {
    if (self = [super init]) {
        _orderListTable = [[CKOrderListServiceTable alloc] initWithDBQueue:dbQueue];
        _user = user;
    }
    return self;
}

- (void)insertOrUpdateOrderListItem:(CKOrderListItem *)item {
    [_orderListTable insertOrUpdateOrderListItem:item];
}

- (NSArray <CKOrderListItem *> *)getOrderListItems {
    return [_orderListTable getOrderListItems];
}

@end
