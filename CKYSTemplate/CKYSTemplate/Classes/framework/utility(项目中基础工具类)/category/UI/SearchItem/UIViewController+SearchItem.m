//
//  UIViewController+SearchItem.m
//  CKYS
//
//  Created by Yan on 2018/7/4.
//  Copyright © 2018年 YY. All rights reserved.
//

#import "UIViewController+SearchItem.h"
#import "objc/runtime.h"
#import "CKYSBCSearchItem.h"

@interface UIViewController ()

@property(nonatomic, strong) CKYSBCSearchItem *searchItem;

@end

@implementation UIViewController (SearchItem)

static const void *CKYSBCSearchItemKey = &CKYSBCSearchItemKey;

- (void)setSearchItem:(CKYSBCSearchItem *)searchItem {
    objc_setAssociatedObject(self, CKYSBCSearchItemKey, searchItem, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (CKYSBCSearchItem *)searchItem {
    return  objc_getAssociatedObject(self, CKYSBCSearchItemKey);
}

- (void)initSearchItemWithTarget:(id)target action:(SEL)action {
    if (!self.searchItem) {
        self.searchItem = [[CKYSBCSearchItem alloc] initRightBarItemWithImageNormalString:@"ckys_bc_search_button_image_normal" imageHighlightedString:@"ckys_bc_search_button_image_normal" target:target action:action];
    }
}

@end
