//
//  UIViewController+SearchItem.h
//  CKYS
//
//  Created by Yan on 2018/7/4.
//  Copyright © 2018年 YY. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CKYSBCSearchItem;

@interface UIViewController (SearchItem)

@property(nonatomic, strong, readonly) CKYSBCSearchItem *searchItem;

- (void)initSearchItemWithTarget:(id)target action:(SEL)action;

@end
