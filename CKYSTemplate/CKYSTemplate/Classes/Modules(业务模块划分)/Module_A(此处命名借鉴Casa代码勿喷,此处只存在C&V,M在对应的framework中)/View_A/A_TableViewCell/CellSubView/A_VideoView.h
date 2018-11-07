//
//  A_VideoView.h
//  CKYSPlatform
//
//  Created by Yan on 2018/10/18.
//  Copyright © 2018 ckys. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "A_VideoViewControlProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@protocol A_VideoViewDelegate <NSObject>

- (void)sourceCenterVideoViewActionType:(A_VideoViewActionType)actionType atIndexPath:(NSIndexPath *)indexPath videoItem:(id)videoItem;

@end

@class A_Item;

@protocol A_VideoViewDataProtocol <NSObject>

- (void)setSourceCenterVideoViewData:(A_Item *)data atIndexPath:(NSIndexPath *)indexPath;

- (void)setSourceCenterVideoViewActionType:(A_VideoViewActionType)type;

@end

@protocol A_VideoViewInstanceProtocol <NSObject>

- (instancetype)initWithFrame:(CGRect)frame sourceCenterVideoViewDelegate:(id<A_VideoViewDelegate>)delegate;

@end

extern CGFloat A_VideoViewHeightConst;

@interface A_VideoView : UIView

<A_VideoViewInstanceProtocol,
A_VideoViewDataProtocol,
A_VideoViewControlProtocol>

@property (nonatomic, strong, readonly) UIImageView *imageViewVideoPhoto;
@property (nonatomic, strong, readonly) NSIndexPath *indexPath;

@end

NS_ASSUME_NONNULL_END
