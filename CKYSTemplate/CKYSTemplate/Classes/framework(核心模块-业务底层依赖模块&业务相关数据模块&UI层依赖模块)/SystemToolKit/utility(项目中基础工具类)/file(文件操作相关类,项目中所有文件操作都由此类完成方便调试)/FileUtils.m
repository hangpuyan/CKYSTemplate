//
//  FileUtils.m
//  CKYSTemplate
//
//  Created by Yan on 2018/9/6.
//  Copyright © 2018年 YY. All rights reserved.
//

#import "FileUtils.h"

@implementation FileUtils

+ (BOOL)pathExists:(NSString *)path isDir:(BOOL *)isDir{
    BOOL tmp;
    BOOL isExist = [[NSFileManager defaultManager] fileExistsAtPath:path isDirectory:isDir ? isDir : &tmp];
    return isExist;
}

+ (void)createDirectoryAtPath:(NSString *)dirPath {
    BOOL isDir = YES;
    BOOL isExist = [[NSFileManager defaultManager] fileExistsAtPath:dirPath isDirectory:&isDir];
    if (!isExist) {
        [[NSFileManager defaultManager] createDirectoryAtPath:dirPath withIntermediateDirectories:YES attributes:nil error:nil];
    }
}

+ (void)createFileAtPath:(NSString *)filePath {
    BOOL isExist = [[NSFileManager defaultManager] fileExistsAtPath:filePath];
    if (!isExist) {
        [[NSFileManager defaultManager] createFileAtPath:filePath contents:nil attributes:nil];
    }    
}


+ (BOOL)moveSrcPath:(NSString *)srcPath toDestPath:(NSString *)destPath overWrite:(bool)overWrite{
    if(![self pathExists:srcPath isDir:0]){
        return NO;
    }
    if([self pathExists:destPath isDir:0] && !overWrite){
        return NO;
    }
    
    NSError *error = nil;
    BOOL r =  [[NSFileManager defaultManager] replaceItemAtURL:[NSURL fileURLWithPath:destPath] withItemAtURL:[NSURL fileURLWithPath:srcPath] backupItemName:nil options:NSFileManagerItemReplacementUsingNewMetadataOnly resultingItemURL:nil error:&error];
    return r;
}

+ (BOOL)deletePath:(NSString *)path{
    return [[NSFileManager defaultManager] removeItemAtPath:path error:nil];
}

@end
