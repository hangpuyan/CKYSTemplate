//
//  A_CellHeaderView.h
//  CKYSPlatform
//
//  Created by Yan on 2018/10/17.
//  Copyright © 2018 ckys. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol A_CellHeaderViewDelegate <NSObject>

- (void)sourceCenterCellHeaderViewHeadActionAtIndexPath:(NSIndexPath *)indexpath;

@end

@class A_Item;

@protocol A_CellHeaderViewDataProtocol <NSObject>

- (instancetype)initWithFrame:(CGRect)frame delegate:(id<A_CellHeaderViewDelegate>)delegate;

- (void)setSourceCenterCellHeaderViewData:(A_Item *)item atIndexPath:(NSIndexPath *)indexpath;

@end

extern CGFloat A_CellHeaderViewHeightConst;

@interface A_CellHeaderView : UIView <A_CellHeaderViewDataProtocol>

@end

NS_ASSUME_NONNULL_END
