//
//  NetworkService.m
//  CKYSTemplate
//
//  Created by Yan on 2018/11/9.
//  Copyright © 2018 YY. All rights reserved.
//

#import "NetworkService.h"
#import "AFNetworking.h"

@implementation NetworkService

+ (void)getRequestServerWithUrl:(NSString *)url parameter:(NSDictionary *)parameter completeHandle:(void(^)(id result))completeHandle failure:(void(^)(NSError *error))failure {
    [[self shareHttpSessionManager] GET:url parameters:parameter progress:^(NSProgress * _Nonnull downloadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        if (completeHandle) {
            completeHandle(responseObject);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (failure) {
            failure(error);
        }
    }];
}

+ (void)postRequestServerWithUrl:(NSString *)url parameter:(NSDictionary *)parameter completeHandle:(void(^)(id result))completeHandle failure:(void(^)(NSError *error))failure {
    [[self shareHttpSessionManager] POST:url parameters:parameter progress:^(NSProgress * _Nonnull uploadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        if (completeHandle) {
            completeHandle(responseObject);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (failure) {
            failure(error);
        }
    }];
}

static AFHTTPSessionManager *httpSessionManager;

#define HTTP_REQUEST_TIMEOUT_CONST 10

+ (AFHTTPSessionManager *)shareHttpSessionManager {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (!httpSessionManager) {
            httpSessionManager = [[AFHTTPSessionManager alloc] initWithSessionConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
            httpSessionManager.requestSerializer = [AFHTTPRequestSerializer serializer];
            [httpSessionManager.requestSerializer setTimeoutInterval:HTTP_REQUEST_TIMEOUT_CONST];
            httpSessionManager.responseSerializer = [AFHTTPResponseSerializer serializer];
            httpSessionManager.responseSerializer.acceptableContentTypes = [[NSSet alloc] initWithObjects:@"application/xml", @"text/xml",@"text/html", @"application/json",@"text/plain",@"application/javascript",@"text/json",nil];
        }
    });
    return httpSessionManager;
}


@end
