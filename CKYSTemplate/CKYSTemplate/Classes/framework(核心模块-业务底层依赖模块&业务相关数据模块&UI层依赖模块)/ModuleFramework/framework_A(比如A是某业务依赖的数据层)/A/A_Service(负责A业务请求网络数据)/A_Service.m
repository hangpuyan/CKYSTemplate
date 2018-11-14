//
//  A_Service.m
//  CKYSPlatform
//
//  Created by Yan on 2018/10/16.
//  Copyright © 2018 ckys. All rights reserved.
//

#import "A_Service.h"
#import "A_ServiceResult.h"
#import "A_ServiceParameter.h"
#import "NSMutableDictionary+Safe.h"
#import "NetworkDNSConst.h"

@implementation A_Service

#define A_SERVICE_URL @""

+ (void)getResourceDataServiceWithParameter:(A_ServiceParameter *)parameter completeHandle:(void(^)(A_ServiceResult *result))completeHandle failure:(void(^)(NSError *error))failure {
    
    NSString *A_SERVICE_URL_STRING = [NSString stringWithFormat:@"%@%@",ROOT_URL,A_SERVICE_URL];
    
    NSMutableDictionary *a_parameter = [NSMutableDictionary dictionary];
    [a_parameter safeSetObject:@"" forKey:@""];
    
    [self getRequestServerWithUrl:A_SERVICE_URL_STRING parameter:a_parameter completeHandle:^(id  _Nonnull result) {
        A_ServiceResult *a_service_result = [[A_ServiceResult alloc] init];
#warning todo...result->a_service_result
        if (completeHandle) {
            completeHandle(a_service_result);
        }
    } failure:^(NSError * _Nonnull error) {
        if (failure) {
            failure(error);
        }
    }];
}

@end
