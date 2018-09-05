//
//  NSURLSession+ANSyncRequset.m
//  AudioNote
//
//  Created by sogou-Yan on 2018/1/24.
//  Copyright © 2018年 YY. All rights reserved.
//

#import "NSURLSession+ANSyncRequset.h"

@implementation NSURLSession (ANSyncRequset)

+ (NSData *)sendSynchronousDataTaskWithRequest:(NSURLRequest *)request
                             returningResponse:(NSHTTPURLResponse * __autoreleasing *)returnResponse
                                         error:(NSError * __autoreleasing *)returnError {
    dispatch_semaphore_t semaphore = dispatch_semaphore_create(0);
    __block NSData *data = nil;
    if (!semaphore) {
        return data;
    }
    [[[NSURLSession sharedSession] dataTaskWithRequest:request completionHandler:^(NSData *taskData, NSURLResponse *taskResponse, NSError *taskError) {
        data = taskData;
        if (returnResponse) {
            *returnResponse = (NSHTTPURLResponse *)taskResponse;
        }
        if (returnError) {
            *returnError = taskError;
        }
        dispatch_semaphore_signal(semaphore);
    }] resume];
    dispatch_semaphore_wait(semaphore, DISPATCH_TIME_FOREVER);
    return data;
}

@end
