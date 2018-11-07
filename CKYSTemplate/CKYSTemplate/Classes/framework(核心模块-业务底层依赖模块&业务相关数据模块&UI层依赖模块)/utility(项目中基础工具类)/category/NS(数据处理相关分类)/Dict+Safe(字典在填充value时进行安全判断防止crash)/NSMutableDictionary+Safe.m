//
//  NSMutableDictionary+Safe.m
//  CKYSPlatform
//
//  Created by Yan on 2018/10/8.
//  Copyright © 2018 ckys. All rights reserved.
//

#import "NSMutableDictionary+Safe.h"

@implementation NSMutableDictionary (Safe)

- (void)safeSetObject:(id)anObject forKey:(id)aKey {
    [self setObject:[NSString stringWithFormat:@"%@",anObject] forKey:[NSString stringWithFormat:@"%@",aKey]];
}

- (void)safeSetValue:(id)value forKey:(id)aKey {
    [self setValue:[NSString stringWithFormat:@"%@",value] forKey:[NSString stringWithFormat:@"%@",aKey]];
}

@end
