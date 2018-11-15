//
//  CKKeyedArchiverHelper.m
//  CKYSTemplate
//
//  Created by Yan on 2018/11/15.
//  Copyright © 2018 YY. All rights reserved.
//

#import "CKKeyedArchiverHelper.h"
#import "FileUtils.h"
#import "DocumentDirectoryHelper.h"

@implementation CKKeyedArchiverHelper {
    NSString *_filePath;
    NSString *_fileName;
}

/** 初始化一个路径 */
- (instancetype)initWithFileName:(NSString *)fileName {
    self = [super init];
    if (self) {
        _fileName = fileName;
        _filePath = [[DocumentDirectoryHelper documentDirectoryPath] stringByAppendingPathComponent:_fileName];
        [FileUtils createFileAtPath:_filePath];
    }
    return self;
}

- (void)archiverRootObj:(id)obj {
    @synchronized (self) {
        NSData *data = [NSKeyedArchiver archivedDataWithRootObject:obj];
        [data writeToFile:_filePath atomically:YES];
    }
}

- (id)unArchiver {
    __block id data;
    @synchronized (self) {
      data = [NSKeyedUnarchiver unarchiveObjectWithFile:_filePath];
    }
    return data;
}

@end
