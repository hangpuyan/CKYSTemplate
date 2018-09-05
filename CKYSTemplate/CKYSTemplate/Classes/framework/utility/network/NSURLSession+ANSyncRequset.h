//
//  NSURLSession+ANSyncRequset.h
//  AudioNote
//
//  Created by sogou-Yan on 2018/1/24.
//  Copyright © 2018年 YY. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSURLSession (ANSyncRequset)

+ (NSData *)sendSynchronousDataTaskWithRequest:(NSURLRequest *)request
                             returningResponse:(NSHTTPURLResponse **)returnResponse
                                         error:(NSError **)returnError;

@end
