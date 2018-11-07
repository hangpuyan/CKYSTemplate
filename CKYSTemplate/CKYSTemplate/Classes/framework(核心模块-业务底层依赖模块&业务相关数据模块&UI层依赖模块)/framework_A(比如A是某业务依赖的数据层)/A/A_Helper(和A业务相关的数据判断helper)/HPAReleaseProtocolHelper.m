//
//  HPAReleaseProtocolHelper.m
//  HP_APlatform
//
//  Created by Yan on 2018/10/31.
//  Copyright © 2018 ckys. All rights reserved.
//

#import "HPAReleaseProtocolHelper.h"

@implementation HPAReleaseProtocolHelper

#define HP_AReleaseProtocolDataKeyConst @""

#define HP_A_ReleaseProtocolServerDataKeyConst @""

+ (void)saveAReleaseProtocolDataWithJson:(NSDictionary *)json {
    @try {
        NSString *data = [json objectForKey:HP_A_ReleaseProtocolServerDataKeyConst];
        if (data.length) {            
            [[NSUserDefaults standardUserDefaults] setObject:data forKey:HP_AReleaseProtocolDataKeyConst];
            [[NSUserDefaults standardUserDefaults] synchronize];
        }
    } @catch (NSException *exception) {
        
    } @finally {
        
    }
}

+ (NSString *)getAReleaseProtocolData {
   return [[NSUserDefaults standardUserDefaults] objectForKey:HP_AReleaseProtocolDataKeyConst];
}

@end
