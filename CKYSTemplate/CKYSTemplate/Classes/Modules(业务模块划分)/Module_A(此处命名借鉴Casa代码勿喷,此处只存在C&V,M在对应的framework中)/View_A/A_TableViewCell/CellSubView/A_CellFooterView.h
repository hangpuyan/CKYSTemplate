//
//  A_CellFooterView.h
//  CKYSPlatform
//
//  Created by Yan on 2018/10/17.
//  Copyright © 2018 ckys. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, A_CellFooterViewActionType) {
    A_CellFooterViewActionA = 0,
};

@protocol A_CellFooterViewDelegate <NSObject>

- (void)sourceCenterCellFooterViewAction:(A_CellFooterViewActionType)actionType;

@end

extern CGFloat A_CellFooterViewHeightConst;

@class A_Item;

@interface A_CellFooterView : UIView

- (instancetype)initWithFrame:(CGRect)frame delegate:(id<A_CellFooterViewDelegate>)delegate;

- (void)setSourceCenterCellFooterViewData:(A_Item *)item;

@end

NS_ASSUME_NONNULL_END
