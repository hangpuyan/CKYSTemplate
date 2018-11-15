//
//  CKOrderListServiceTable.m
//  CKYSTemplate
//
//  Created by Yan on 2018/11/15.
//  Copyright © 2018 YY. All rights reserved.
//

#import "CKOrderListServiceTable.h"
#import "ANFMDBUtils.h"
#import "FMDB.h"

@implementation CKOrderListServiceTable {
    FMDatabaseQueue *_dbQueue;
}

- (instancetype)initWithDBQueue:(FMDatabaseQueue*)dbQueue {
    if (self = [super init]) {
        _dbQueue = dbQueue;
        [self createTableIfNotExist];
    }
    return self;
}

- (void)createTableIfNotExist {
    NSString *sql_create_table_order_list = [NSString stringWithFormat:@"",@""];
    [self excuteSql:sql_create_table_order_list];
}

- (bool)excuteSql:(NSString*)sql {
    __block bool success = true;
    [_dbQueue inTransaction:^(FMDatabase *db, BOOL *rollback) {
        [ANFMDBUtils execSQLinDB:db execBlock:^(FMDatabase *db) {
            success = [db executeUpdate:sql];
            if (!success) {
                NSLog(@"excute %@ fail",sql);
                *rollback = YES;
            } else {
                NSLog(@"excute %@ success",sql);
            }
        }];
    }];
    return success;
}

- (void)insertOrUpdateOrderListItem:(CKOrderListItem *)item {
    if ([self isExist:item]) {
#warning todo... update
    } else {
#warning todo... insert
    }
}

- (BOOL)isExist:(CKOrderListItem *)item {
    return YES;
}

- (NSArray <CKOrderListItem *> *)getOrderListItems {
    
    return nil;
}

@end
