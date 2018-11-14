//
//  CKDefaultSystemImp.m
//  CKYSTemplate
//
//  Created by Yan on 2018/11/11.
//  Copyright © 2018 YY. All rights reserved.
//

#import "CKDefaultSystemImp.h"
#import "objc/runtime.h"

#import "LoginServiceManager.h"
#import "LoginServiceManagerProtocol.h"

@implementation CKDefaultSystemImp {
    NSMutableDictionary <NSString *, id> *_serviceDict;
    CKAppSystemInfo *_systemInfo;
}

- (instancetype)init:(CKAppSystemInfo *)systemInfo {
    if(self = [super init:systemInfo]){
        _serviceDict = [[NSMutableDictionary alloc] init];
        _systemInfo = systemInfo;
    }
    return self;
}

- (id)getServiceOfProtocol:(Protocol *)p{
    @synchronized (_serviceDict) {
        return [self private_getOrCreateServiceOfProtocolNoLock:p];
    }
}

#pragma mark - Private

- (id)private_getOrCreateServiceOfProtocolNoLock:(Protocol *)p{
    NSString *pName = [NSString stringWithUTF8String:protocol_getName(p)];
    id result = [_serviceDict objectForKey:pName];
    if (result == nil) {
        result = [self private_createServiceForProtocolNoLock:p];
        if (result != nil) {
            [_serviceDict setObject:result forKey:pName];
        }
    }
    return result;
}

- (id)private_createServiceForProtocolNoLock:(Protocol *)p {
    //add service creation here
    if (p == @protocol(LoginServiceManagerProtocol)) {
        return [[LoginServiceManager alloc] init];
    }
    return nil;
}

@end
