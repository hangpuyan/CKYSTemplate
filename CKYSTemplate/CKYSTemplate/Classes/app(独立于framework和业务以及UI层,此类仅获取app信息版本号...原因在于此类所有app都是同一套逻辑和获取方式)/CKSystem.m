//
//  CKSystem.m
//  CKYSTemplate
//
//  Created by Yan on 2018/11/11.
//  Copyright © 2018 YY. All rights reserved.
//

#import "CKSystem.h"
#import "CKAppSystemInfo.h"

@implementation CKSystem {
    CKAppSystemInfo *_systemInfo;
    NSMutableArray *_dict;
}

static CKSystem *globalSystem;

- (instancetype)init:(CKAppSystemInfo *)systemInfo {
    self = [super init];
    if (self) {
        _systemInfo = systemInfo;
    }
    return self;
}

- (id)getServiceOfProtocol:(Protocol *)p {
    [NSException raise:@"Invalid CKSystem" format:@"getServiceOfProtocol: not found"];
    return nil;
}

+ (CKSystem *)system {
    if (globalSystem == nil) {
        [NSException raise:@"Uninitialized CKSystem" format:@"globalSystem not set"];
    }
    return globalSystem;
}

+ (void)setSystem:(CKSystem *)systemImp {
    if (globalSystem != nil) {
        [NSException raise:@"CKSystem already set" format:@"globalSystem already set"];
    }
    globalSystem = systemImp;
}

@end
