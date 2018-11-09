//
//  A_ServiceParameter.m
//  CKYSPlatform
//
//  Created by Yan on 2018/10/16.
//  Copyright © 2018 ckys. All rights reserved.
//

#import "A_ServiceParameter.h"
#import "NSNilObjectHelper.h"

@interface A_ServiceParameter ()

@property (nonatomic, copy) NSString *xxxId;

@property (nonatomic, assign) int pageSize;

@property (nonatomic, assign) int pageNumber;

@end

@implementation A_ServiceParameter

- (instancetype)initWithXXXId:(NSString *)xxxId pageSize:(int)pageSize pageNumber:(int)pageNumber {
    self = [super init];
    if (self) {
        if ([NSNilObjectHelper isNilOrNullObject:xxxId]) {
            xxxId = @"";
        }
        _xxxId = xxxId;
        _pageSize = pageSize;
        _pageNumber = pageNumber;
    }
    return self;
}

@end
