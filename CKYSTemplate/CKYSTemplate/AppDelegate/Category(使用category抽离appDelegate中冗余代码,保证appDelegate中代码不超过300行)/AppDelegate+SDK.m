//
//  AppDelegate+SDK.m
//  HPTemplate
//
//  Created by Yan on 2018/11/5.
//  Copyright © 2018 YY. All rights reserved.
//

#import "AppDelegate+SDK.h"
#import "HPBuglyHelper.h"

@implementation AppDelegate (SDK)

- (void)initBugly {
    [HPBuglyHelper initBugly];
}

@end
