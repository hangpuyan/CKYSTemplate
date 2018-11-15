// 源于蘑菇街框架

#import <Foundation/Foundation.h>

typedef void(^CKTask)();

/** 多线程管理 */
@interface CKSundriesCenter : NSObject

/** 串行队列 */
@property (nonatomic, readonly) dispatch_queue_t serialQueue;

/** 并发队列 */
@property (nonatomic, readonly) dispatch_queue_t parallelQueue;

+ (instancetype)shareInstance;

- (void)pushTaskToSerialQueue:(CKTask)task;

- (void)pushTaskToParallelQueue:(CKTask)task;

- (void)pushTaskToSynchronizationSerialQUeue:(CKTask)task;

@end
