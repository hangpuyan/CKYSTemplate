//
//  HPAReleaseProtocolHelper.h
//  CKYSPlatform
//
//  Created by Yan on 2018/10/31.
//  Copyright © 2018 ckys. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HPAReleaseProtocolHelper : NSObject

+ (void)saveAReleaseProtocolDataWithJson:(NSDictionary *)json;

+ (NSString *)getAReleaseProtocolData;

@end

NS_ASSUME_NONNULL_END
