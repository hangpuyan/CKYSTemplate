//
//  NetworkServiceResult.m
//  CKYSTemplate
//
//  Created by Yan on 2018/11/9.
//  Copyright © 2018 YY. All rights reserved.
//

#import "NetworkServiceResult.h"

@implementation NetworkServiceResult

#define NETWORK_SERVICE_RESULT_CODE_SUCCESS 200

- (BOOL)isRequestServiceSuccess {

    return self.code == NETWORK_SERVICE_RESULT_CODE_SUCCESS;
}

@end
