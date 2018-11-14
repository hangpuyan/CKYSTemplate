//
//  HPBuglyHelper.m
//  HPTemplate
//
//  Created by Yan on 2018/11/5.
//  Copyright © 2018 YY. All rights reserved.
//

#import "HPBuglyHelper.h"
#import <Bugly/Bugly.h>

@implementation HPBuglyHelper

#define XXX_BUGLY_APP_ID @""
#define XXX_BUGLY_APP_KEY @""

+ (void)initBugly {

#warning todo...initBugly
    [Bugly startWithAppId:XXX_BUGLY_APP_ID];

}

@end
