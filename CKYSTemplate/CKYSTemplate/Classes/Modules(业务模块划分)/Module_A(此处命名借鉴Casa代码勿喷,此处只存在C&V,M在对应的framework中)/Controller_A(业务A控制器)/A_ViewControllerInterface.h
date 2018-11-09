//
//  A_ViewControllerInterface.h
//  CKYSTemplate
//
//  Created by Yan on 2018/11/9.
//  Copyright © 2018 YY. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol A_ViewControllerDelegate <NSObject>

- (void)a_actionCompleteHandleWithParameter:(id)Parameter;

@end

@protocol A_ViewControllerInputProtocol <NSObject>

+ (void)jumpTo_A_PageFromViewController:(UIViewController *)viewController delegate:(id<A_ViewControllerDelegate>)delegate parameter:(id)parameter;

@end

@protocol A_ViewControllerInstanceProtocol <NSObject>

- (instancetype)initWithDelegate:(id<A_ViewControllerDelegate>)delegate parameter:(id)parameter;

@end





NS_ASSUME_NONNULL_END
