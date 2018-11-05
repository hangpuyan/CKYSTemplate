//
//  CKUserDefaultCenter.h
//  CKYSTemplate
//
//  Created by Yan on 2018/9/6.
//  Copyright © 2018年 YY. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CKUserDefaultCenter : NSObject

+ (nonnull CKUserDefaultCenter *)userDefaultCenter;

- (nullable NSUserDefaults *)systemUserDefaults;

- (BOOL)boolForKey:(nullable NSString *)key;
- (NSInteger)integerForKey:(nullable NSString *)key;
- (float)floatForKey:(nullable NSString *)key;
- (double)doubleForKey:(nullable NSString *)key;
- (long long)longlongForKey:(nullable NSString *)key;
- (nullable NSString *)stringForKey:(nullable NSString *)key;
- (nullable NSArray <NSString *> *)arrayForKey:(nullable NSString *)key;
- (nullable NSDictionary <NSString *,id> *)dictionaryForKey:(nullable NSString *)key;
- (nullable NSDate *)dateForKey:(nullable NSString *)key;
- (nullable id)objectForKey:(nullable NSString *)key;

- (void)setBool:(BOOL)value forKey:(nullable NSString *)key;
- (void)setInteger:(NSInteger)value forKey:(nullable NSString *)key;
- (void)setFloat:(float)value forKey:(nullable NSString *)key;
- (void)setDouble:(double)value forKey:(nullable NSString *)key;
- (void)setLongLong:(long long)value forKey:(nullable NSString *)key;
- (void)setString:(nullable NSString *)value forKey:(nullable NSString *)key;
- (void)setArray:(nullable NSArray <NSString *> *)value forKey:(nullable NSString *)key;
- (void)setDictionary:(nullable NSDictionary <NSString *,id> *)value forKey:(nullable NSString *)key;
- (void)setDate:(nullable NSDate *)value forKey:(nullable NSString *)key;
- (void)setObject:(nullable id)value forKey:(nullable NSString *)key;

- (BOOL)synchronize;

@end
