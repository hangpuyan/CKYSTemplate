//
//  CKTimerHelper.h
//  SystemInfo
//
//  Created by Yan on 2018/11/20.
//  Copyright © 2018 YY. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol CKTimerHelperProtocol <NSObject>

- (void)timerStart;

- (void)timerPause;

- (void)timerReusme;

- (void)timerStop;

- (void)resetTimer;

- (void)releaseTimer;

@end

/** 定时器回调函数 */
@protocol CKTimerHelperDelegate <NSObject>

- (void)timerActionCallBack:(NSInteger)second;

@end

/** 倒计时 定时器 默认 间隔1s 回调一次 */
@interface CKTimerHelper : NSObject <CKTimerHelperProtocol>

@property (nonatomic, strong, readonly)  NSTimer *timer;

@property (nonatomic, assign, readonly)  BOOL isTimerStart;

- (instancetype)initTimerWithTime:(NSInteger)time delegate:(id<CKTimerHelperDelegate>)delegate;

@end

NS_ASSUME_NONNULL_END
