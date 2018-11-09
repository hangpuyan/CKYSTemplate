//
//  HPSearchItem.m
//  CKYS
//
//  Created by Yan on 2018/7/4.
//  Copyright © 2018年 YY. All rights reserved.
//

#import "HPSearchItem.h"
#import "UIButton+Image.h"

@implementation HPSearchItem

- (instancetype)initRightBarItemWithImageNormalString:(NSString *)aImageNormalString imageHighlightedString:(NSString *)aImageHighlightedString target:(id)aTarget action:(SEL)action {
    if (self = [super init]) {
        UIButton *buttonBack = [UIButton buttonWithImageNormalString:@"hp_search_button_image_normal" imageHilightString:@"hp_search_button_image_normal" imageDisenabledString:@"hp_search_button_image_normal" imageBgNormalString:@"" imageBgHilightString:@"" imageBgDisenabledString:@"" backgroundColor:[UIColor clearColor] tag:0 rect:CGRectMake(0, 0, 30, 30) targrt:aTarget action:action forControlEvents:UIControlEventTouchUpInside];
        self = [self initWithCustomView:buttonBack];
    }
    return self;
}

@end
