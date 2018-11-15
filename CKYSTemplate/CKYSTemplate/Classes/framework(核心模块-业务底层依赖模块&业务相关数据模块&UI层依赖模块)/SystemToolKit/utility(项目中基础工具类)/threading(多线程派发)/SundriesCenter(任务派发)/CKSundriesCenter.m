//
//  CKSundriesCenter.m
//  Duoduo
//
//  Created by 独嘉 on 14-4-23.
//  Copyright (c) 2015年 MoguIM All rights reserved.
//

#import "CKSundriesCenter.h"

@implementation CKSundriesCenter

+ (instancetype)shareInstance {
    static CKSundriesCenter* global_CKSundriesCenter;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        global_CKSundriesCenter = [[CKSundriesCenter alloc] init];
    });
    return global_CKSundriesCenter;
}

- (id)init {
    self = [super init];
    if (self) {
        _serialQueue = dispatch_queue_create("com.ckys.SundriesSerial", NULL);
        _parallelQueue = dispatch_queue_create("com.ckys.SundriesParallel", NULL);
    }
    return self;
}

- (void)pushTaskToSerialQueue:(CKTask)task {
    dispatch_async(self.serialQueue, ^{
        task();
    });
}

- (void)pushTaskToParallelQueue:(CKTask)task {
    dispatch_async(self.parallelQueue, ^{
        task();
    });
}

- (void)pushTaskToSynchronizationSerialQUeue:(CKTask)task {
    dispatch_sync(self.serialQueue, ^{
        task();
    });
}

@end
