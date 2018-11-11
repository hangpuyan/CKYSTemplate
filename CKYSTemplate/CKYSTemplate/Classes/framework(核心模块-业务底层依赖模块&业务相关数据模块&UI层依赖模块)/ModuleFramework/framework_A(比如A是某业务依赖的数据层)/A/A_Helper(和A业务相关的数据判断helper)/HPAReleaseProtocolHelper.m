//
//  HPAReleaseProtocolHelper.m
//  HP_APlatform
//
//  Created by Yan on 2018/10/31.
//  Copyright © 2018 ckys. All rights reserved.
//

#import "HPAReleaseProtocolHelper.h"
#import "UserDefaultCenter.h"

@implementation HPAReleaseProtocolHelper

#define HP_A_ReleaseProtocolDataKeyConst @""

#define HP_A_ReleaseProtocolServerDataKeyConst @""

+ (void)saveAReleaseProtocolDataWithJson:(NSDictionary *)json {
    @try {
        NSString *data = [json objectForKey:HP_A_ReleaseProtocolServerDataKeyConst];
        if (data.length) {
            [[UserDefaultCenter userDefaultCenter] setObject:data forKey:HP_A_ReleaseProtocolDataKeyConst];
            [[UserDefaultCenter userDefaultCenter] synchronize];
        }
    } @catch (NSException *exception) {
        
    } @finally {
        
    }
}

+ (NSString *)getAReleaseProtocolData {
   return [[UserDefaultCenter userDefaultCenter] objectForKey:HP_A_ReleaseProtocolDataKeyConst];
}

@end
