//
//  FileUtils.h
//  CKYSTemplate
//
//  Created by Yan on 2018/9/6.
//  Copyright © 2018年 YY. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FileUtils : NSObject

+ (BOOL)pathExists:(NSString *)path isDir:(BOOL *)isDir;

+ (void)createDirectoryAtPath:(NSString *)dirPath;
+ (void)createFileAtPath:(NSString *)filePath;

+ (BOOL)moveSrcPath:(NSString *)srcPath toDestPath:(NSString *)destPath overWrite:(bool)overWrite;
+ (BOOL)deletePath:(NSString *)path;

@end
