//
//  UIViewController+SearchItem.h
//
//  Created by Yan on 2018/7/4.
//  Copyright © 2018年 YY. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HPSearchItem;

@interface UIViewController (SearchItem)

@property(nonatomic, strong, readonly) HPSearchItem *searchItem;

- (void)initSearchItemWithTarget:(id)target action:(SEL)action;

@end
