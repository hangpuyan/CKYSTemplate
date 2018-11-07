//
//  UIViewController+SearchItem.m
//  CKYS
//
//  Created by Yan on 2018/7/4.
//  Copyright © 2018年 YY. All rights reserved.
//

#import "UIViewController+SearchItem.h"
#import "objc/runtime.h"
#import "HPSearchItem.h"

@interface UIViewController ()

@property(nonatomic, strong) HPSearchItem *searchItem;

@end

@implementation UIViewController (SearchItem)

static const void *HPSearchItemKey = &HPSearchItemKey;

- (void)setSearchItem:(HPSearchItem *)searchItem {
    objc_setAssociatedObject(self, HPSearchItemKey, searchItem, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (HPSearchItem *)searchItem {
    return  objc_getAssociatedObject(self, HPSearchItemKey);
}

- (void)initSearchItemWithTarget:(id)target action:(SEL)action {
    if (!self.searchItem) {
        self.searchItem = [[HPSearchItem alloc] initRightBarItemWithImageNormalString:@"hp_bc_search_button_image_normal" imageHighlightedString:@"hp_bc_search_button_image_normal" target:target action:action];
    }
}

@end
