//
//  ANFMDBUtils.h
//  AudioNote
//
//  Created by Yan on 2018/06/06.
//  Copyright © 2018年 Yan. All rights reserved.
//

#import <Foundation/Foundation.h>

@class FMDatabase;

/** 防止DB异常 */
@interface ANFMDBUtils : NSObject

+ (void)execSQLinDB:(FMDatabase *)db execBlock:(void (^)(FMDatabase *db))block;

@end
