//
//  AppDelegate+SDK.m
//  CKYSTemplate
//
//  Created by Yan on 2018/11/5.
//  Copyright © 2018 YY. All rights reserved.
//

#import "AppDelegate+SDK.h"
#import "CKYSBuglyHelper.h"

@implementation AppDelegate (SDK)

- (void)initBugly {
    [CKYSBuglyHelper initBugly];
}

@end
