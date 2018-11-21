//
//  CKTimerHelper.m
//  SystemInfo
//
//  Created by Yan on 2018/11/20.
//  Copyright © 2018 YY. All rights reserved.
//

#import "CKTimerHelper.h"
#import "NSTimer+Addition.h"

@implementation CKTimerHelper {
    NSInteger _second;
    NSInteger _secondUserInput;
    BOOL _isTimerStart;
    __weak id<CKTimerHelperDelegate> _delegate;
}

#define CKYS_TIMER_TIME_DEFAULT 60

- (instancetype)initTimerWithTime:(NSInteger)time delegate:(id<CKTimerHelperDelegate>)delegate {
    self = [super init];
    if (self) {
        _secondUserInput = time;
        _delegate = delegate;
        if (time==0) {
            _second = CKYS_TIMER_TIME_DEFAULT;
        } else {
            _second = time;
        }
        if (!_timer) {
            CKTimerHelper * __weak weakSelf = self;
            void(^timerCallback)() = ^{
                CKTimerHelper *strongSelf = weakSelf;
                [strongSelf private_responseAction:nil];
            };
            _timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(private_timerAction:) userInfo:[timerCallback copy] repeats:YES];
            [[NSRunLoop currentRunLoop] addTimer:_timer forMode:NSRunLoopCommonModes];
            [_timer setFireDate:[NSDate distantPast]];
        }
    }
    return self;
}

- (void)private_responseAction:(NSTimer *)timer {
    if (_delegate && [_delegate respondsToSelector:@selector(timerActionCallBack:)]) {
        [_delegate timerActionCallBack:_second];
    }
}

- (void)private_timerAction:(NSTimer *)timer {
    _second --;
    _isTimerStart = YES;
    if (_second<0) {
        _second = [self getUserInputTime];
        [self timerPause];
        return;
    }
    void (^block)() = timer.userInfo;
    if (block) {
        block();
    }
}

- (NSInteger)getUserInputTime {
    if (_secondUserInput) {
       return _secondUserInput;
    } else {
       return CKYS_TIMER_TIME_DEFAULT;
    }
}

#pragma mark -  CKTimerHelperProtocol

- (void)timerPause {
    [_timer pauseTimer];
    _isTimerStart = NO;
}

- (void)timerReusme {
    [_timer resumeTimer];
}

- (void)timerStart {
    _isTimerStart = YES;
    [_timer resumeTimer];
}

- (void)timerStop {
    [_timer stopTimer];
    _isTimerStart = NO;
}

- (void)releaseTimer {
    [_timer stopTimer];
    _timer = nil;
    _isTimerStart = NO;
}

- (void)resetTimer {
    _second = [self getUserInputTime];
    [_timer pauseTimer];
}

- (void)dealloc {
    [_timer invalidate];
    _timer = nil;
    NSLog(@"dealloc%@",self);
}

@end
