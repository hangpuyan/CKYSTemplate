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
#import "CKYSNetConfig.h"

@implementation A_Service

#define CKYS_SOURCE_CENTER_SERVICE_URL @""

+ (void)getResourceDataServiceWithParameter:(A_ServiceParameter *)parameter completeHandle:(void(^)(A_ServiceResult *sourceCenterResult))completeHandle failure:(void(^)(NSError *error))failure {
    NSString *CKYS_SOURCE_CENTER_SERVICE_URL_STRING = [NSString stringWithFormat:@"%@%@",ROOT_URL,CKYS_SOURCE_CENTER_SERVICE_URL];
    NSMutableDictionary *sourceCenterServiceParameter = [NSMutableDictionary dictionary];
    [sourceCenterServiceParameter safeSetObject:@"" forKey:@""];
    
}

@end
