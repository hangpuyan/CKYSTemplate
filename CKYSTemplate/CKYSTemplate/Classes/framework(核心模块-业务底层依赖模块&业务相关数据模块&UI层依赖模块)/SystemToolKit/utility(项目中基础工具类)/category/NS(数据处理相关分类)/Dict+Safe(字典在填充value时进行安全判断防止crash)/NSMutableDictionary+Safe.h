//
//  NSMutableDictionary+Safe.h
//  CKYSPlatform
//
//  Created by Yan on 2018/10/8.
//  Copyright © 2018 ckys. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSMutableDictionary (Safe)

- (void)safeSetObject:(id)anObject forKey:(id)aKey;

- (void)safeSetValue:(id)value forKey:(id)aKey;

@end

NS_ASSUME_NONNULL_END
