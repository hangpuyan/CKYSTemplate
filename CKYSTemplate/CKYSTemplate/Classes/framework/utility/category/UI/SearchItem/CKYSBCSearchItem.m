//
//  CKYSBCSearchItem.m
//  CKYS
//
//  Created by Yan on 2018/7/4.
//  Copyright © 2018年 YY. All rights reserved.
//

#import "CKYSBCSearchItem.h"
#import "UIButton+Image.h"

@implementation CKYSBCSearchItem

- (instancetype)initRightBarItemWithImageNormalString:(NSString *)aImageNormalString imageHighlightedString:(NSString *)aImageHighlightedString target:(id)aTarget action:(SEL)action {
    if (self = [super init]) {
        UIButton *buttonBack = [UIButton buttonWithImageNormalString:@"ckys_bc_search_button_image_normal" imageHilightString:@"ckys_bc_search_button_image_normal" imageDisenabledString:@"ckys_bc_search_button_image_normal" imageBgNormalString:@"" imageBgHilightString:@"" imageBgDisenabledString:@"" backgroundColor:[UIColor clearColor] tag:0 rect:CGRectMake(0, 0, 30, 30) targrt:aTarget action:action forControlEvents:UIControlEventTouchUpInside];
        self = [self initWithCustomView:buttonBack];
    }
    return self;
}

@end
