//
//  DocumentDirectoryHelper.m
//  CKYSTemplate
//
//  Created by Yan on 2018/11/15.
//  Copyright © 2018 YY. All rights reserved.
//

#import "DocumentDirectoryHelper.h"

@implementation DocumentDirectoryHelper

+ (NSString *)documentDirectoryPath {
    return [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask,YES) lastObject];
}

+ (NSString *)cachesDirectoryPath {
    return [NSSearchPathForDirectoriesInDomains(NSCachesDirectory,NSUserDomainMask,YES) lastObject];
}

+ (NSString *)libraryDirectoryPath {
    return [NSSearchPathForDirectoriesInDomains(NSLibraryDirectory,NSUserDomainMask,YES) lastObject];
}

+ (NSString *)temporaryDirectoryPath {
    return NSTemporaryDirectory();
}

@end
