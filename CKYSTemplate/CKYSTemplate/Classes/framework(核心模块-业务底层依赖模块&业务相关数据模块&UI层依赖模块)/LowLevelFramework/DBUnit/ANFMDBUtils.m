//
//  ANFMDBUtils.m
//  AudioNote
//
//  Created by Yan on 2018/06/06.
//  Copyright © 2018年 Yan. All rights reserved.
//

#import "ANFMDBUtils.h"
#import "FMDatabase.h"

@implementation ANFMDBUtils

+ (void)execSQLinDB:(FMDatabase *)db execBlock:(void (^)(FMDatabase *db))block {
    if (db) {
        @try {
            block(db); // 调用 block 来回调实现具体的逻辑
        } @catch (NSException *exception) {
            // 处理异常，也可以直接抛出，这样调用者就能捕获到异常信息
            NSLog(@"ANFMDBUtils exec sql exception: %@", exception);
        } @finally {
            
        }
    } else {
        // 如果打开失败，则打印出错误信息
        NSLog(@"db open failed, path:%@, errorMsg:%@", [db databasePath], [db lastError]);
    }
}

@end
